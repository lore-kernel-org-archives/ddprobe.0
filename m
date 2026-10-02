Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4627A332EBC
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790967634; cv=none; b=Tyd/thO8YR8m646YjGp9k35C0PBT5vPOvYrPzgQv20CeIs1yMbVgPesvJNvN/Btwf80OZjxUqxfCQMU1hJjhbVcmIeCjPxl8/unPcUObtNeAJaG3BH/OsPFbMNV5mGWjMF/OyeXBY9hiS/Y/jt+LgLIZanSusRISfTFHda9CYQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790967634; c=relaxed/simple;
	bh=fsmtm6sMHEPwnzqWf0ylitYaCeAzjA55aroM5fE8hAo=;
	h=To:Subject:From:Message-Id:Date; b=QGCpkZEwtlPk7lUX0wmFi7lNpXZmUoxUmgpEROnzQfQUt+KMnO9g6d0rRcPHLezUfklKtSc637Xhryw0vfDeTrYeAKPcPd2jampTjomnBaBdMGkrs/PeqIB4v+cHHxIFPGK16OgNwbjDDr8cHL+1Ja9XXd3wyjIiOCcGdL+0B1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0XLIHPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0XLIHPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC49AC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790967633;
	bh=fsmtm6sMHEPwnzqWf0ylitYaCeAzjA55aroM5fE8hAo=;
	h=To:Subject:From:Date:From;
	b=u0XLIHPwJKODMH46m8mEryZLqxGREZQvacyf2fcFU4581hZJBgX8Gvs6iIo45Umjt
	 lrC/dYuEL6ll2xBtS/WSX/xILyYrJFwqt21O/Upsg9mQzjS+hr30f+GTxlNxG7WLco
	 MAFU2FdwsG3j7GkruTekFKySc6Sc26Q95IMMM4ACiYag3lFNRCk2Az04oEuE2ZB4Sh
	 R6Tev5o/oNvkEYOJYt0En1yH7Wpvz4U+0qMQr4rJOb5TFy8jmeg78QoNdbtnQjaovN
	 2wjIuwdLs+wQ9RDZoI938CtAsCYYVG12tnWlsCX76CEvQGrMbJnNOvVFXs+CyKctWL
	 4ZE9Q2c5vvu7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD244CA5FE0
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096763368.30372.15319996172880318152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f921bef3c3cea76a150617cd0dbe4d84e91c8e87cc6bab7eae7934ef0e1c0c
Date: Fri, 02 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790967633
