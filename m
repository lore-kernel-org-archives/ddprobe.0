Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4309E1798C
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723388154; cv=none; b=Cfv7QAqZ3m+rIynapgM6Zp797dcto7AyjB/+dyDifJDedRTqQhGGX8fhyp0Qw1sric6vudbBgJqMQV3+ihRUARYfF//OcRlwSyCjqFAw1ysHMF04Xdfun+BznbjPpH3N45hxFJdVCTqc7KBJjpze/FnTgCaC3ZYfzQ4usGdQ0x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723388154; c=relaxed/simple;
	bh=d8+/a3U6LWIgAC++uhR/wFjirFkFamKzkfbHL5DDAg0=;
	h=To:Subject:From:Message-Id:Date; b=RihLpkeQrFyqe25LRqTf6KmxR4lNwr1bzHB1lLkqLrOG4uZ5Nw2sO0rvgBzMsrX5WebPfkvSkQ8NVx/j/oJ8jcYKitCo0WB3YEQkm3tAdhpqfiBTE6a72ZPh4/3WQLd8DgxsgYeDZpkhxXGIthnjyYrOVLQ7n87YrLb8gdYnnXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhNPxbpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhNPxbpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55F9C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723388153;
	bh=d8+/a3U6LWIgAC++uhR/wFjirFkFamKzkfbHL5DDAg0=;
	h=To:Subject:From:Date:From;
	b=AhNPxbpoXTT2cQI8Ur70jWqjWscohQAkbuy9OiTtijFeN1HU+ZlzVx9FAIxrIDy9g
	 pjE8iNPwKw1jetUmz7zRVhnIi3OVlBv5vLO8+PPxtzzp0vOivXoEo4Z4G3mmNrRkFH
	 g241VB2iajCB3TgvPBfOsNUUWhaqkRRL5hMD4xTmEDhwYtJEJuh9BqqsbkZExRKXLR
	 q3RTTNlzS0167Tmg4Jw9XvFuU2BUOuUnygkFlqNLGUjHcze1XjaER7q9WRnNZdTlS6
	 ZU+pvK2ulB+60SDId9Y1t6G/PoAkS3a5h3JtKDpjg4pdXX/ovsH67cGQ+YVuRFuRgx
	 I+8TaKbOpQulg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7AEC52D7B
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172338815363.25509.5718739103358519340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c679a33881b73acf58aff72d86b0b678c958a45794b3fbfbe34a06a97310fa62
Date: Sun, 11 Aug 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723388153
