Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD101917ED
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 11:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725018355; cv=none; b=OmO7xoUD7CTk+dafowsBt7csr9MIjME+2ISl0Jfzbzsx+MW7ZKkSyhO68VGba0KW4QQm8CGDYetIEx+VXvH9I9ALnCYAFLUZLmbopGXDlg2vor31IcgznCOEgZLCLrd/KZPbOcjaZgtZyZoi9lkpw5oZWyZrgYbkWSTNaQEZHVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725018355; c=relaxed/simple;
	bh=06dpvpcO5ocySrQ5zgt2bkapU9EXl0a2gR23cackibI=;
	h=To:Subject:From:Message-Id:Date; b=uev63dVC2FVt5dbidVVdYwfaYaSSkelyp2+wv/B3+DKblFyIGpkK/jNmdEsQmb291e/X7/SY2LR+ebbz78Uy4WuhSDs00pOaPjbMcCF2n1zvApuYeGsSY8HfPDwrD2X79itF9jH+iXnoGzJzbDVxZawcCKl7YQPe4IMPHb9droY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwaSSK6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwaSSK6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FD4C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725018354;
	bh=06dpvpcO5ocySrQ5zgt2bkapU9EXl0a2gR23cackibI=;
	h=To:Subject:From:Date:From;
	b=NwaSSK6m1cDWOZMMmuPgGeFJEfr6EjdZmlCavtWcj6u+RgE2HQJwzEgmCU0qrXo6j
	 WjrCgGkec3nAjHXGZv1vD6ayojcdS2EPwKU0eWlDorPn0AIYahezoeJa8Nq+9wEexl
	 w2HXYFv0BD/gqImw+Hgg7B/jPcQff9hDWYbevSFtzjMdwLWU3yaa34f7Rp91LZ680P
	 a3o0hZTkAfCkb65QjV1vKAmCj9k9swQmf+6nbGbsVMpN68sXqrpFJJoQHfsOCnWcEz
	 tw3DNE2smuzAPhFL51iJyuoAzFUBeqFFY7GmPJmVrd+3D7MgXbWoULqh3xGvdvXG4n
	 TkKNBV0/GEeHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E838CA0FE1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172501835362.27880.12382165541266860446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eaf028f1a96adcbb0b56ee779380b987980c24938873fa5889451a41b068cbc
Date: Fri, 30 Aug 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725018353
