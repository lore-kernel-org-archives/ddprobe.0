Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCF9274B42
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773164094; cv=none; b=flkLdzNA0XvFnFGx3X3NGfFi7pN5Ac0CmGShLAwJg+daLrT/jSKhq7JWFnWDdJ155mO542F2EUVb742HjgDDbL1M7X4HRWXWH5RfRVxLv63I+ANWWa8r7SCWFALvDgUv0QJu0r5vqIUIGVLNVNebZ8OiwjSkTIQ/ae4i8anViGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773164094; c=relaxed/simple;
	bh=8l7OfdTHh8z7eWJ5/fXhtPD64RDJHKG57tsegCbZalc=;
	h=To:Subject:From:Message-Id:Date; b=jlXSke0GMxW6gBFRkomBB/7/2BGEP9Ky4Lw9uMbk8vEQWnhbHF5felu8rNQky/BUYS3mx4DcpXHKEHefwvI8dhssPN7OdLn5WxyqfiIlg2nV2Kg2l1Hoqq6v/qrDq88v2f5tVGTIH7ORgCMGnDlHRVuhHKOHek2xdp0i/BTf3eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxEEPJsQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxEEPJsQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3220C19425
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773164093;
	bh=8l7OfdTHh8z7eWJ5/fXhtPD64RDJHKG57tsegCbZalc=;
	h=To:Subject:From:Date:From;
	b=oxEEPJsQywuUwdVWwbcyqE+LXGIG2bD6RquooXs1wjE8z4afb7MOWfEF+ECO+A1Eb
	 YCAn/fNdSCSMBLLR7tZTjrEetrrAAHeVXSlSDHCX63KsbbU09qwDJx826MCnaBkG6I
	 FWNE16KiLXwmZ55Efgbv+3WSkRmzR5YMh1zza1kOafOC1HrpP6yavioo2IEsI55DnG
	 QPXtv7qING9Knu4LTje2zyLGN7Ce5gzTnNg9FgB7u0r1AybmeQoJvinai8fdHKdkuk
	 rTocrekopj+oAANsRShPRFdRDD3ukz8J4dwQ9hBAZehLoWnsh4SgI6Mfh2ZxGyS2eF
	 RbA3QWMTA9OZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8DFFD4F0C
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316409357.5988.16341804954633689117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f1845ef982f461f262cfb041a14d3e0260b5ce2cc89e20870ff5751a7d7016a
Date: Tue, 10 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773164093
