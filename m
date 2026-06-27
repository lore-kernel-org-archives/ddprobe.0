Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D73581ACD
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782521314; cv=none; b=lf4JbgQnjMuVhkBM2h3k209+O3hiTa277AfnCpzeXSZ6VGKdepq4Ss8GGG3Alu3qYaYWCftoPa2Y6VA1250rRBzC2UzB0kCB0FNIuF8hwvZrSRKoiShmB1LK7LAQ1vD1YIDg0gByLDQUHTxg/HboBYQ6qU0JNuNiBBqdeeWshIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782521314; c=relaxed/simple;
	bh=UBhx1i9Ih/YMWvUuEIlchoOzDS02ZlYyaOgzFZjXmu0=;
	h=To:Subject:From:Message-Id:Date; b=iKan81rtmHlCI5JSSxIJGjDlSlivOzq8x20yt+DVd1ofy07DBLP5zJe8W+iejvkDaOL3jiB2ApkIktmk0x0CyJOZMulTuH1erG9V3Gl+cM5w6vZHo41FGO7HGQshEriiayU5ZWtgXuH6XTa+KyBMSlDdk1XftLmsTQ6ZzDn8+Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnRlzjJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnRlzjJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68A2C19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782521313;
	bh=UBhx1i9Ih/YMWvUuEIlchoOzDS02ZlYyaOgzFZjXmu0=;
	h=To:Subject:From:Date:From;
	b=rnRlzjJjUB5zlIgatdeCNIR13D7SzGgARnlzRGhgKjTgOT6aqCruDSe20SsLexpmM
	 OZEPnerf3OA9NJiw18Vy1Bjl+Q6nT3MOod4vLeEI0fWrsqpH0aSzCn+shhp6DUHSX6
	 OhxcmGxUZNC1OF364A8okLgnlQHTDNpQkugE4wFE7Qbae0Cs3mH/whqYB7X8jyKLJ9
	 k2OD0hAfAe/roqYVrzkaRZn9Anz8qm76JjXVGm+AhYnALM4f2asyBBSgPXopqdLJAf
	 HzGB8IwGAXRGKTbM6M395cHPr3gaDfEqrBiSy/HvDKh4sgu/eZCcPvPxH5TdOo8oWG
	 LWRFd2jpnFMVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEE8C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252131368.10770.5610483996771721923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f54ca3b5b0949c20fc33f0a2f02076bab60a33595bdf296ee2a6930048776d49
Date: Sat, 27 Jun 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782521313
