Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155E9224AF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773568494; cv=none; b=eSElFHHHNQa5U5w0OnktenAwUhhtLejSihsZTwok/cBi7LO8jgFlPO9XSgq9YlWs+edVEos0dcpZGyuziBBX2HAQDDrgiOLo3l5mjpibPX0Ewbo4bQNWOBxzmqYWzmIVRBZ6XbSaxfRH6fOeUodVsJ8IY08AKgstm41P6zUIUsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773568494; c=relaxed/simple;
	bh=6kk1YORRgRGP11K+svVTeRNABSG12KriB/e86H+4PRY=;
	h=To:Subject:From:Message-Id:Date; b=VEIMLE5NrYO/51bHAn4DLEM8GKYMV90brx5QgtN9ltyzq+KHUxtcjip3gNrMRH1O6XCMrI5vQqvh6o3ZJkXWPFtyoWIafZRaQySg+kIoILlnjVyCKxCaYvsRRP60CRjOCtqkgl6weOU3S5poD4ZSzj9S8n8IB2BLrfTCJctTuok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQAP+e0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQAP+e0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC5EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773568493;
	bh=6kk1YORRgRGP11K+svVTeRNABSG12KriB/e86H+4PRY=;
	h=To:Subject:From:Date:From;
	b=iQAP+e0b+DOQXVl1UNxiy7j/3M+YbU1rg1qW21znY5ay/1dN3x/6bQtv6w9S1aEyN
	 UcvD3TIRJSck3UfPmgyZTQroiVL8JQ2hxjirzwvRYoIOFbr75zL84U9/7yHJwajrUT
	 VsEg3joixlo58P2X/6mbBEsYpA/CLEvJQvN4UgvXWzfomjWyKuQK1DSmdG6OUdJQY6
	 et4xzk+lRpCcmUFes1EBvhtgX0OmbABU5p49XYc1ecGvhP3/ESLM4tE6Jme8uWfeJw
	 oYoceoHgyLjjvywJuSw22GDpK6731sHoUpXQ41afnvMTWZPkbWquBMoNySLF7mYBQM
	 n3khwD7o8CBHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939E6D58B0A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356849358.27998.10014478238690357571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eefd9041805e9c0c59bbbc3ef4a08b8d5aaed0bd34d6a4bd36c09d5c77bfbf42
Date: Sun, 15 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773568493
