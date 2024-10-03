Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A31919C57F
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727964354; cv=none; b=qbcNO4V0+URGA88CFiwA+EZnLbasrd6ZgIC1aVZWER1qUjQqmUbvPkowz1vn0mabFex0wIZ7dXZaPcKwmzdzpEGcqeE7CKrn9kR8p/FU4U5DohsNE6KpC7SlqRk8s5OLUAF3fouOdCYp1CjZJA8yqXPoIs12PK96FYoIeD9LZ08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727964354; c=relaxed/simple;
	bh=X3n44b5t+NFyKxOVyHvoUjoxPbIctthptqe/UaYOLB8=;
	h=To:Subject:From:Message-Id:Date; b=mOybsA70v5043KZVuW6zcTeCgQTbE1u9D3g26DUa+ykrlPev/Nja2lrdigm3t12ATT5NVgZmKQf7WIZqzWSGA6pzhCp2jh0JSL1Fb0P9sIIRNvt/pryH14sg6C9MN/FUkNnCufoXPlFWp5XDg0XuNSwpKwq2ZXKjqE6MTHZmHJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=raDmVD4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="raDmVD4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B217FC4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727964353;
	bh=X3n44b5t+NFyKxOVyHvoUjoxPbIctthptqe/UaYOLB8=;
	h=To:Subject:From:Date:From;
	b=raDmVD4DlFzPL+PO9MEGq86aJMggZiKbLZi5U339Uk/pRF2G9uItE/8o4KO+Ejexn
	 FFRnDBOMNxMplv6Y9QwwDT+G2cbXASwdCYYqzzBz2HCZ4/uyRpzK+geU2Mkb4Xxi8K
	 bTJf2nsSc2JjKRIFxYELx2F2qohl6icwJVX4c/4X07B+yjTrxIC4qMzugLHtHA9Yzy
	 fCSPKNo8nrQYx6UY9n/knJrvoT/VPfynDXrmVwryQbKrOxD/A7TpCMybORgIqiYj+8
	 mSvjs5l8K+zUuQguW/r3Om1IJIsu43a6hOgPF/gN+tYamJwGTgb/NrzLFnkAIf5WqD
	 atiJb2YdA368A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A03CF34A9
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172796435360.11273.10721873412027647652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34dec7b19df10d7beeb70cae8fe9cb58cc89471ae593779e29bbc8714de22be1
Date: Thu, 03 Oct 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727964353
