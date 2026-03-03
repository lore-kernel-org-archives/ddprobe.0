Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE37155C97
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772499894; cv=none; b=Y62b4ibnemRnNYm5cUMNQD4i3HVRr2iAn1SKJL947ImrUKksxT7rcK+n/OwiN831jIJoTzW9j2z2FkBBg7SNFq1Az0g3KW8efiq6NyeGZ4m356O0twDE9cTw0ZF9JOtJqsQNkP1use33N07mtaTEyow4K6tHoCSb0JTIpDpwh4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772499894; c=relaxed/simple;
	bh=Vqmi0shYqPe/U9B+VhUf/oBCe+XOT16rBqJeuJyaiko=;
	h=To:Subject:From:Message-Id:Date; b=FLyu/3uYgAQQNvfRjir+P83/owdD0Q3x0OoTXaJaISuyCBK/rDH8uuvm/EB7BIzpPOgop8kbhcZhogVxD5MTjHVqLy1nZUrqG7ZrFqrCr0fdLvX6bGjkPZ4nlvGCijcrmAFMuqYnVQeOad0Air3uMBWPM5fZWEde37al6Phg8S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABKEFiJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABKEFiJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA886C19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772499893;
	bh=Vqmi0shYqPe/U9B+VhUf/oBCe+XOT16rBqJeuJyaiko=;
	h=To:Subject:From:Date:From;
	b=ABKEFiJv8IzGMRadRnP4FY6GuJ9buWbjJNsxREebyABr4uT/heCeUxXesAZC0HftL
	 aqBUMmnc98Vbo8XPu+k8ScS9xm9HOnLPnGxqFFPt8kpswJJ8LxO64QHko5lceTygwf
	 UDGgfz8gEzSh5OPMRnuArSMl8Iq6BEilwpVIUCzokN92QZUwkWfaBK70K8CffImetd
	 jxF5AArtR86MxWpv2avwOfU61wTZCr9Hp/x0kxlWogwdrKXIDU4+QQO9hnh1LguRnx
	 wkbyTMPQrSVXyJrlNU9wOl7EsJx6CjoGpLOYbG8xa+2rXkUJrTwdJMMFUimqwGkLxk
	 5QCBJTWOZuxvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E4AEB3649
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249989359.29613.2429144452106640928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab837c53b2e10290b6a989f4a171751486bd3655f6eefcac3a4b4330dcaa7ca7
Date: Tue, 03 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772499893
