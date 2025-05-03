Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC9518DB20
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746259794; cv=none; b=nVX7EnR1C+UBsF2DT6oPR3cFrGOvopKp8wNXHRkhCrRNk0zl6jP5bBCSAjdKxLNVfFQqfVQ4VGG8tVRlM2L+mpHRjq5TzIspUATPLuyGCcEL3pBxzk4ZYmAlEdxTPz+nN6bZBvFL10RVVDbA44K+JeflKKjXchKejIsSaFxewCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746259794; c=relaxed/simple;
	bh=RNJse4kgk9STEsQd94ElCj6avEeSRw2LufhjFtlt5pA=;
	h=To:Subject:From:Message-Id:Date; b=Uv2OjFCHRaryyHxtL3a1NI24IFHmamk0iNRMZpBivn+2i95yT3b3r+Cwc6de74+6eIn6aMl2wtGtMtMiWjjxyEcjWI3I7VAcBa2wdwO8oDfcYruMJ/7EkRkejIJAZ7JYSWFoD8kKlLMzG4cmz0nCUqWkjosBvZ4yTV54hKn5pkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Akg4LBHm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Akg4LBHm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A104FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746259793;
	bh=RNJse4kgk9STEsQd94ElCj6avEeSRw2LufhjFtlt5pA=;
	h=To:Subject:From:Date:From;
	b=Akg4LBHmSV92Dk6+wcpyqSPkgKSMJUKbW+tqhE7MuA2JOkk5bmSukv802YAEJPB5I
	 Rqkhe9VwWK0ecXmWJPjaiMKp28Dcrsbo5kx+nO9sOjLpKi/EAS355hPDsag+85Pj5q
	 s/CIwf8WWyMHwY2bX87F0AV1gVQ9YjEZKEDbBug9jsiJWE8Jk1ezUqWNhxOVGM+cPF
	 nuv6/YvORPArdZpfm6pcwoFcWvH8Cl+9rUzKOO4ZwUXREEwq0W+HFpmaSqw2zuU5zQ
	 oQtmzi9dITAP4FhqhMy6VSa0MISJiFL4QJp0VPn03Jhk3lJCpZlHDEyapzc100KXMa
	 Kq24rd+H/s+xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F53C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625979357.26923.677010130194348990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c9998b134e23de5180dd32ca431bf1701c93fb424f8a84ac7a36a38ba8c7652
Date: Sat, 03 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746259793
