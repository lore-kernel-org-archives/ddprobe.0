Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC45F23BD17
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757103593; cv=none; b=NTyQVxsKkN7uWaeNf3GexB/htBPl7OTjfA0QyXP6jxmLAuXuWi7oJ2pnVLMsww0Vf90n21L/80TFr3WTvclRGE63p69Ny/evHSn+JWixivKj1K8CEekWSHclSkUo0BiNPfKEnXvvOi2XHgceco3sDjpiM684mjnLD2VF+4whrKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757103593; c=relaxed/simple;
	bh=lmfwsqjKeX7HW3LnX0Wx8HEAS/E1JRJAGEoyZtBAJJo=;
	h=To:Subject:From:Message-Id:Date; b=F+Dq2mRksNZj6Mj+IFApQPpKzT5pylamj8VTb9/FEB8VzYx+ijdsJSPto+QfrSLNbJumclBlGomS+AL2pDVCmc8Tc/63314nBlYp97K6zCLS9w4/yklJFQtnIzG4Z2BPNsV0J05u4QD3FYmSdHmybPv8yxYVTJR+aifL5LX9eAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJAXm8oX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJAXm8oX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4254C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757103593;
	bh=lmfwsqjKeX7HW3LnX0Wx8HEAS/E1JRJAGEoyZtBAJJo=;
	h=To:Subject:From:Date:From;
	b=vJAXm8oXLZPNx0XS4ybO//ywLLcIhHjB/h540Y3r33Iqa+ELtJq7VokFK2/qVKo3R
	 vqjUnf6hCKkaPMJbO8BMeuZhEoXKvQJd5EguLdaIDjL4Q7V48hy4WJznAR0Z2UHc0r
	 Sl8mIG2NK8njjNbdc0p0LObsFDuBTkcdEZzm4nNLNMG9KybCD/2LSqdIcaKYE71hH1
	 hqVokIMeuvVeTp+kbKuI2zji+uia36GJLla/rf0fPAc8KHwsc5rTlWqwB9sdEUY/AC
	 1VmYcgSQCg/rWKQetBhQpMZrqhOuyjbjXmkFNg37/zhMBsQryrbIudIAy2eYi6RyWQ
	 O/LHeZF4qHagg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925B1CA1017
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710359357.25118.6832185611595685743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b436f2b27aed7ce0963305b5b6b297af676563fa2709a86061c3abd17b135064
Date: Fri, 05 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757103593
