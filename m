Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1272638F9C
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758470396; cv=none; b=ZbmDAQ84aAd4aViLqJCFExZoc9S9LT4caAPccAtyE32rBVY5d0EKWv5ZreYlLq/6cipHz46/pVip8p82PUd+fkkqo2wUaPxI/67ghY/ujoKxfqaxLfQi2256BQmtlX+MRknaZN6NAD6cDnTaOwFo7vKeFXdCi4hg0DeEcty/2eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758470396; c=relaxed/simple;
	bh=03hmvLwUxu7zj8dWYNpWVVXxDTDFbYMX8ZLeiYypug4=;
	h=To:Subject:From:Message-Id:Date; b=uRq81uycH6ivvPlTDTGUE32a9EIsy3Y6ntFQUe8c7Bl5T3eoJybnYYZD37jmx2kyg2ZuxSbIgrnypSk4s1p/AU7ifZvOJoRUY6SH5/horpKHHDyumYLytmFAQN/n7Zjg/i5f2UuO7KM2Uvm9a7BPLGsFmjI4hI8Y54DbsZs1zFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZHJHmg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZHJHmg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEF3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758470393;
	bh=03hmvLwUxu7zj8dWYNpWVVXxDTDFbYMX8ZLeiYypug4=;
	h=To:Subject:From:Date:From;
	b=FZHJHmg8Da541S1cXx4LJewOm8cv8lBJqDoDafNOmw7dzW7XXOWndsXRCJ3Rvxmwr
	 JFPWAtu95209aXI65lTHAVKcEcgX7KEpXxDXVQ97zpLZOts6SDb/OEH0d/4BjbVUdy
	 6lG3lzN01+RalCx5mwEaJKf7chrYG8BYkUQ8W4Bu0dj9BiNDAAaVdmdMq0prQ1nBJr
	 wO2kOoBy4kUwVlxm7WhgDIAn7lJ0oyM9XvlQTK3l11LMBtDjeso06EFY0zJeR/ty51
	 /s1/I5G6rYrepfrVI6fryBD5C1mXG6JjdFX5s9pCBDvCKCQAToeN+vaHQAR6r+sqAr
	 Lp5iiDzTKtFFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F791CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847039357.21511.619250756920316460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e823d6689e1dd35c702b783f85bedeae68555046a51ff1949b72c67bb7f8756
Date: Sun, 21 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758470393
