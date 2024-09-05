Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262A7364A9
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725548154; cv=none; b=Ub7ubiaaJNy75xFioJn0rFFjRsHyZGm/jhyzjpGSxICP/Oiai4W4SKRJg2SGVgc504c1NTzfLkmShDmZLqSmqUQFkW0BQGY0sAHDRg2ty0MLZ66IHD0Cl2y34OJCmt5v/EdbZezmNkzIWzsrKbqb/IKTweHUcplJCGZL5Elrcfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725548154; c=relaxed/simple;
	bh=baj67s1RTIfbyRSxr7BaTdD2u0ApfNxCA95apxR4CBE=;
	h=To:Subject:From:Message-Id:Date; b=lMCuUUn0/EXxPpUa8LWsmtZ9dQjA9YCkDdmVxIQUr25Yy4nJym/SWA59CaMp5Lv+smoo/XhDM3BMrFoPiKUc+ftL5/pwBWFPoVEKZzww//0vpMpyiBomVz5A4BpNw3eYUFkjGvVqw0JVfFuGFkxOdu1UjdaIDVmNgFzgTCYUC/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwM/hkwG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwM/hkwG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE427C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725548153;
	bh=baj67s1RTIfbyRSxr7BaTdD2u0ApfNxCA95apxR4CBE=;
	h=To:Subject:From:Date:From;
	b=RwM/hkwGJwAU5Apw+OIlHkdXMVGiW59iR5dIAcPxMOgj2WZGbBQC7vs+Wy0CmDejw
	 tjwFK+lJb1fg+T9EUvIjG2ba+iKd4YF5Pxym7Ghm0DBVaX2PbPbYD8ObMnrAiQo6sL
	 t91YeU/ym4tCFEQIpt+LZmvxlyg2lZtKiNa+j+lGHAFNlkgY5aEBJ4vlIo8uFjLu03
	 e6OeRnIA6QiM37f+I0V/q2nRYmGSaqjPNxLxlv9WQ+tkfEZvm05ADbJ7+H3aafLQU2
	 qaVr0k4dI3wXWOOWwo70xwrpRH3g5Ut79AKhWYM7Bva4qWLprFBpWv4V65qTm1x+TU
	 ri6iq7hjqwSoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C955CD5BC9
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172554815363.9876.609877405487787279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e890c07ffc8f350951db765bc35ff19537332801f68a790addb37430cc3ca56f
Date: Thu, 05 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725548153
