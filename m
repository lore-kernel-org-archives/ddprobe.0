Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3125D635
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735358154; cv=none; b=hT7IVwqR+gJdMo99FfTjKW9ySu7MNOe3HJxRnWkZrhBcFRHpGpCFv4HX0RZViLBxXFs9a6/WCAW4cX7XkcmG16usojr/JUL9PMaDqktHM5x6K4lUbbidhqfl4f5QcsrCvWozZvjbEHm9n00lMJb9P0WJLy1vvvtZDunVzY/1sn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735358154; c=relaxed/simple;
	bh=GRW6SYzlaip1IFh6kC7CrGy6/2ei5JsEfQ/Aaa2S29M=;
	h=To:Subject:From:Message-Id:Date; b=jK2AemHlG36fygHwkDP5eqhfBr8NSdiVTRnCJxGwHrmc9wqUTZ3cLcBC6dTur2H/Y6D+sqW7ykIEoBEKS7Pl/aqDFVwKOGv6Z8IvynLx9HncuPxuL816EoaJw6bjBDNuX2ab2LrT/qSuIdA4e8TEjGcosusXgZKPMntNYm+9y4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqIZY43Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqIZY43Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCCDC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735358153;
	bh=GRW6SYzlaip1IFh6kC7CrGy6/2ei5JsEfQ/Aaa2S29M=;
	h=To:Subject:From:Date:From;
	b=QqIZY43QpZRuJv0JXmAIuoC82tKwgIq7ZZBsEGLevkkgbk456TFe/FcvRq1lkFUwv
	 W4+Km4D6nHzOg4iJAM0TwPVzKX5ZywknxCeAPIKHdtJg91FE0/CYXK7+eGnXFlMfOe
	 tdDn7LdkaQk02itjlO+Vc4W+JHWOvII+21VtDlqBjg9GGZm03D9zX2rBnXYxMEolAr
	 T42wXs7mkdmxzX2ed7wVp5yGhwhfmr9St7H1TYwoTkuJYuymmw7s+Bq2H/7vhG2oTF
	 k2P7wSK4ZXUTOk/Ykqxq8e29EMOEmd8PM4p6YH4Yn4pAkbzLBmdgWIkRmZePvmpTCr
	 22a1OPqTIdQvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C81E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173535815358.22131.2069726397077723190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb8d40f0c4b9cc5c9ab615cabb37711e7ab103a5f84869319be56f5a443456d
Date: Sat, 28 Dec 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735358153
