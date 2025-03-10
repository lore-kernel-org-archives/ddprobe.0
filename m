Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5668A220699
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741633134; cv=none; b=Rq9Bl61tc0Lp7wpxLGD8Eqzl1q4tDpJIpU0LszKPN0eoXOK6Otmnp/R0FHX0lp5ujn1Zv5WGPvr2yTOwaYCmvQyRMVBndm6KljkysXff4I2gTJpe5HJj+zIHt7ososvjvKFGPfLKbOyTdMYCV5hA0Z1fw1caUc0PcMI+oBKpl80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741633134; c=relaxed/simple;
	bh=1ogsKhk1qPt1o/SF9S6nV6eT0UaD6yIhthhIK89aKQw=;
	h=To:Subject:From:Message-Id:Date; b=J7NEWcGMaDQinG1szqjx9Q1KZQqwsboZOGIgj/iuY/rEyB9bij0UIYnrsXbThTNroZXX9OjatSPn3uRWTCLJ4+PPGZ/507iKlzyPpw3M8jOJVg7O20uWSetzslBE5ogyLNdDzGGgto4hP+w5uV3o0cOS/Cv3TjlBCVwvDvwf8mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tq/gWdyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tq/gWdyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF18C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741633133;
	bh=1ogsKhk1qPt1o/SF9S6nV6eT0UaD6yIhthhIK89aKQw=;
	h=To:Subject:From:Date:From;
	b=Tq/gWdyQtB/HQYkBXGAVKHaznff50Qwni0rcWkHJb63TcHqw6mzaNmWy6dbGN1NvM
	 /1Wji7c6j3ydx9NY7QtTe17V2EWr2AIeGZb0utOTQqYqslNNmHxbCaNhdsNjSfYzip
	 mcqcvnAkSHfEELeA4H7q9JmP5SNpVZpe2glAJTUvsVxKU3p0UinpMBKJQ2Tg7Fx7gc
	 caD4aQiGpH9/qxUvp0HEAuyAGIvf5ZY973h969JmpNd+Arll+rGtdOltNktWedKeqZ
	 JA129VUnU+ZAFbt6RKtbtgBnsFBKY4y15R/eT8DbYs5OISG1KYmoh4UmDSJLsStvNk
	 xVH8LoCW8uf5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A975BC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174163313362.32495.2151232936175405147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 117a883562a75883308404157f58f9e8897811a67bb6d062dfa36d55e8960fd0
Date: Mon, 10 Mar 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741633133
