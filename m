Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D87716DEA9
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734806754; cv=none; b=AiGXJNnWCN2u/ejfCEFlDY14hEDa9WwTe1XsFe87CJ/mRHsKaEVSItIiOX3r+ihziX1lzaUGd3At6Ury7SQNZVbug2RJhwYFRV+bWfUDzlSGAIRiw/yJvnnSkxBULzdsMZ+cXejRN6aH695j2D4sm//Uh8oAZ+CFYddVtsbwskM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734806754; c=relaxed/simple;
	bh=XQN9sq82CgjXjcci+xCqs3AtJPeClDQOmSI9f+Sr1GY=;
	h=To:Subject:From:Message-Id:Date; b=f9t4rr2W2n80vyt07IYHSdGpd6MOx+DMh7WP15aGNxUIeX0MKVSDzik/8WyZ0CI4N8kT0urR+xdNpsjS+0811uPyYjAQX1PlHwlGfiQai6IBEhNlNKeNQMkmxLJt6hiDhAEdiyIsKYY4tS1eh41wxjOf2DUjQ/NE+oOzahu0Mbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0fZgi1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0fZgi1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E92C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734806753;
	bh=XQN9sq82CgjXjcci+xCqs3AtJPeClDQOmSI9f+Sr1GY=;
	h=To:Subject:From:Date:From;
	b=j0fZgi1+1e/MTa15h47xpOv/3TUlPUOQOqXacla9qeImwp2h+QehRGrbGOMfws5sj
	 Tk9AVMFWN+U21A5nZ3ug13HFNVtLDi/Is55459Dks9wWgfoBwkFUuM1Hc8RJxjX1SL
	 sIezhPTqnR7FUfthdOQtQGd2ixlVAFq7KulBoTh3pdC6LKLIvJganlU2UwZ3TWNW7a
	 Pg0s4iQ2yacZeqxh4FYsI8F5YHth3KPXA5iJ9dNfa5ViHGU4vJUJXZGmVvSVBdgx8o
	 cY5Inn3a4bsZxpTr7Mggz27lRuVp+9oS3TzHLUC73v/pn7n89tRey/NSt2Us8XiBHs
	 LrfPd03U/SttQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC680E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173480675366.18722.3776441550011686206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d55381a2114e0d5176b6985417b5a963cc744f67714ebdc7ce9f6a1dcbc95b
Date: Sat, 21 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734806753
