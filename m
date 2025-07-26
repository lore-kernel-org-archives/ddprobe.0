Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDDB19D8A8
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753514994; cv=none; b=T56WGMzoLtfkiFEi4RAXfLbYhVVVGGbm+9b+FW+esHQmOWDchbVfSq2KApiHqio8t/ZrtgiGB2l2EAVFmkPtUd+ApClsudU9twqTqRXy8mk+KO5Qv+BT1fcdhzPmJd6m9uF0tXls3zizhHxlLpkj24mGuBn5dDJx1xf3jWd04HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753514994; c=relaxed/simple;
	bh=Qiei+Ok5U++n4fWPx4P/enrRtMOIsLqMNuTxQ+Srk2c=;
	h=To:Subject:From:Message-Id:Date; b=ro3B2WYjaYl7/MXmUPy0l2sbg7DxG5CltV+5V7BFrS/dLraebO/8mI8NGVLrwQ6SvTRImTxBfzQQhpVw7WX5GQeDtd9K7megJaSkxKz7KACK2+MjjP/Mm2cbCmgJiF9rIZ+5Ja9H7pYpWjNLolYiz/W/zCi0PUgcGv3JjdKTXpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDatncUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDatncUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BB1C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753514993;
	bh=Qiei+Ok5U++n4fWPx4P/enrRtMOIsLqMNuTxQ+Srk2c=;
	h=To:Subject:From:Date:From;
	b=QDatncUUYi9E3RjNDEdoqlWrQr6FJaEUFPV8rUXP9HF5CDWv7J7J2UXy3HpnNdmqI
	 WQH6oMXzktL9Q5r07gGW8+hkGcviWixHlEHPDDlQafrFcYt/3MY4dZMSNL5KngRCGJ
	 fj1Qmy7EnwderxJyAhXzM+cQYWegN8qZK/Ug9rWeLS5Bj4ToDOnCPzj0NIvKAIgEML
	 wkzJcEHHPXTIZPICG4wL9W/2wA3rnC2Fxy5qw2pGes0/k4983a3hd8m3hySZis8Zm8
	 BG+LOntGxDBiSXmbKse86c+eDGhbc0gwa8c5dhgaq4v6jc8UF4VTxWhZQY7aSat87g
	 CxxFl5pjww26w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94969C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351499357.12319.5832968546187692693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7cf1c973c8f0d1bd11661f7aa07ba4bb50aff0eb5ac0911b467759244d6bdc
Date: Sat, 26 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753514993
