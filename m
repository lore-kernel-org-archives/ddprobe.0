Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA9019995E
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755645594; cv=none; b=RUHM9To5H6vwaor5x8SzCWzsgHnYYX7kcCvKdgQT3ad4a+M5FUurkLaHvMRf2ReNKjshurP108BX9BiF0DRPx27xVt4Jc6kB3HAED4m9pVEtTnnRA/E76t/ZTtvDTNtwXQSiAlkiyeOnemeO/cmghZgad0FqXY92AlGgugvhRv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755645594; c=relaxed/simple;
	bh=l3DFDtRGztZtgKJYJ+WtYyxhNFop231RoFQtSl0uDTg=;
	h=To:Subject:From:Message-Id:Date; b=juTpJaAC2VyCmeClJgWtvdQeNVx+YEtPdYh7qml1TusK6QSSNiCD8J5btX78Qu5kZZ3tYfy1M9Sb4dQf1yMvBFkJns1PIhdpEhzNun5uwb0n4FNeaD1qDZNQlIpy75NoidfLw7qhYKMzMF4z+1D8nFRXaYA+W0aOck1uK9EVDcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhYp+/7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhYp+/7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBF7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755645593;
	bh=l3DFDtRGztZtgKJYJ+WtYyxhNFop231RoFQtSl0uDTg=;
	h=To:Subject:From:Date:From;
	b=KhYp+/7UiCA832PU1i4QL6/xMdET5k6OErjsR1v2+zsCeRpvGHZaTTjBGR3E7DRiO
	 R9JFkAB/m8bAVU5PVpvEoZBhVNXAezVBnT7pY5AcEMiSgLUP1jqQKt/o+KHobLyT8c
	 CWaSkh5tl4rQzgze5DS104QxnJz+il6GJFl/wprXDk04U5ex7pZpNSXzPITEKgSxa6
	 ZF2eLxapfED9jU3x5QkzLWmk8uuvgaAPMAyMhA20cm1d7MW69NIQ1ITN/ahNOM5+Sz
	 smd7lynriRyre7vkCyXXifa+2Q/KKPwMHyUuncyF6yf8oNxMzYnTLJaKCTGJ9Yi4e/
	 qIzkyXgZYd/0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E99DCA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564559357.26303.13965468014147005292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b6ea3cf32bbf43f0e0dd6b4c44749a4bf8b01dda74f8d8765f7ffe240d3694
Date: Tue, 19 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755645593
