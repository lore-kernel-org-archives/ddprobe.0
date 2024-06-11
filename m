Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF8647F7A
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718113103; cv=none; b=PpOM+oJPbaAteNTOWT+dAycEdduG2peUlpwjOPXpvhQXqijDDyJkvW8+vH9Zh+upeHZYIHdISNvk3inovVNI4h96JwDCHIyodcOf2WKGUbMBzVyq8ZHzxsfocm8fBYwlP9mYpMN05GK3wXjl8H+lhANui31Pk/V3luQBx2sR4hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718113103; c=relaxed/simple;
	bh=/AN2dWUFekLAfHc+PAR8rchQtcCcgq4Zihx5EAPncg4=;
	h=To:Subject:From:Message-Id:Date; b=T1jwfmEybl3VvX2EBcDDJ1HxfxxGOtZFDgtv0BeeFHDnNxddCaceiDqnKql05g3qYbOoIX1C/VHJw0QQ3kpoy7Epd2ZoBgka5d72PQGaJHVlPrJCnPgNU+N/5jAN2EPS/QyHGqXUWi+0ppn+PdevyZXTAp/Oo8oV4ZnC18Gx5FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5oScu/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5oScu/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB53C32789
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718113102;
	bh=/AN2dWUFekLAfHc+PAR8rchQtcCcgq4Zihx5EAPncg4=;
	h=To:Subject:From:Date:From;
	b=Y5oScu/m6vBodzQmAoO2Z1UFNtFvT6SMoEIL2tis+/hAOcvrPfjkWrbTLhM9rASRP
	 OWMvvfk0901Yqtm6DFlq+EjgyBRZ5BGyLDPpl+y8YSb7/3jKudw73HTOXYfGgqh9Yk
	 WVXEBA25JPUiqd2i/gjyZJk6kgTtCDRAN2TRl+5iENN5uap7xTaLRsy7V3csNDPVcl
	 dXfeRBcUwkUPwywuoWKjWspEt+YEZYqrNIODr1ekjJRo7w5LDkSUwho0PQO2RT5ka8
	 UA3CmXwxge+8EJxjEIn1nls5HoYZQtPeTcOYC0oT8r548xzfsYdq+VRYHhlTIi9Ql1
	 67V0aB9ZrVSww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3816C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171811310279.1966.6758000514574138915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ecdccc6a7f1c5b589fba58b5b6a75c575d1249b41471644c68f31d8f4a3039d
Date: Tue, 11 Jun 2024 13:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718113102
