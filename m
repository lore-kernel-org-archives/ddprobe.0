Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EAD86353
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758888594; cv=none; b=CMbK0Xm51FTA0KhSk+g/cdlvrxUS+KzwMlbjrgGUyqFsTfwecmCp2l+wvlxyKlAlFhkmquAMdGnXGMWtwUoucYHRXVjfh7G3aU3z2V770S4b2NC7LPcyATQRExN4d0cPaWxVlZO6AnNOSVuUS1i1dyYAhzrmsz+fOsLUqDK5lto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758888594; c=relaxed/simple;
	bh=LzdQZ/6yrrPXrOdEF9/qafCn1fUkV7KEV3aV0TF/9/g=;
	h=To:Subject:From:Message-Id:Date; b=cPL5t4P0wWzvgZhItdbLtWOuZKAN8tGqhV+g0R0iJcX8Czg7mHPaUi+DcWL5aPqMp1ZRMhwJi5K/mWgdHNThYiFySnWiBxkZuSUqpcUDV1T5ykbrOkYyqUSokMisMLNIsLBaCaS0mfjFOEpWL6asZULuisBEhJYys1ucijr1vLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDUE/7xx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDUE/7xx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7CCC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758888593;
	bh=LzdQZ/6yrrPXrOdEF9/qafCn1fUkV7KEV3aV0TF/9/g=;
	h=To:Subject:From:Date:From;
	b=sDUE/7xxTw2s9MQOYX4w6X4Aqe0wYJmNbUBvgRMLdud2Ula+Ed5iQ33JOvfYbGT8Q
	 3vrrJ0Q5M9zOs0D11cuiXKBMu30PvinRW8YXz/xpMpU3E7wpvsakeGiToNOsz1ej0P
	 Q5uFzrbvJnqpYhYp+Vj+cKbCeF+bwMfIUb07YXFcSwNLRtX0R705jcJ/mNRzwrR2y3
	 /8oYuQCrTpqpRujDtFrt59YHQQJVnobTtKavZgesZ91NPlUCZpgyc0LR8D1HiMwg8M
	 Hb6iwoouwT1J0rabh8h2k0TOaRPryLEXX253ffAmW9Sx7Fknxqu1dkPdEm/RLhhYK8
	 6ULNMhJf+hwEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDE0CAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888859361.10693.1273562352600760257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee637eccce8de5586f6d60269d5c146a88958f08b6dd269a1e45ba08bf4d750d
Date: Fri, 26 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758888593
