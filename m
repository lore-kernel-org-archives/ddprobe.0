Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEBD27FB05
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776857254; cv=none; b=uXkPd4ezUciRioBKychn9SSTVzDLG41BwSt76rKuuG+OtN2YZpe5EP2COQWqO4fWL7Op2M+X7+Zb4HPR3ngPm4hqUxKsyxhp4E7cbs94hgcqC0/uTFobqpgbCv4nNbnAUBOAxwUQtqjXPVcVh9QGhSwtHGkFOwKTmpv07mDva18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776857254; c=relaxed/simple;
	bh=Y2xZBhuF24ko5MtRnW26E2eQ9/+ZL4ss9h/ZetFE880=;
	h=To:Subject:From:Message-Id:Date; b=IDmSgEP9Leq45qXfsCLsILq+BHmfu0LpT/Rj+XhJxYQ70tvbW7abZvHQelAqVynIiXewLehEZE0EekD8WmrN77udPJ0vkAjQYq0s8pzNhsEU+RUJMJXnadm6hP3KLnTJqzynN9HLJMIWAG/Af4ikJxrX5mfSgB0MOkSOdwae1U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxSPfmGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxSPfmGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FFBC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776857253;
	bh=Y2xZBhuF24ko5MtRnW26E2eQ9/+ZL4ss9h/ZetFE880=;
	h=To:Subject:From:Date:From;
	b=FxSPfmGcHuoPZtmuQi4zNjKvU2GcKqQYRy7tQtYnRUittgJRpKohEGcm9W+LO79IT
	 qDds07bihkHPuD4+TuVCFMrPwp16criFR00ksCCYTaMNmlh9NATLwTzYGraZXP6zHF
	 5gnwxrOFnl0SbnReUsiaBMTuTOqgin9bc4bzbXYAhqgK1WtUf38KSE2sP/1he+ivUf
	 IfhWTN4XwX3SQj6O4JkE6gqUkvIvy3xgW4fiMUET+W7F0oUFZtVlUDeMATMaZGz9if
	 bHu8vEIaxRnkRrgGlj4sEEU1fnIwJsmudkZsHQrXk8ZBv8PYOct36ro+/PUfBEePBi
	 7WJ/8/iSBJhTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C97F55811
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685725368.25643.17485754784694282485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63592a31127ab490227b48cf945ae0a369b06b067137a06e40e47e8384520acb
Date: Wed, 22 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776857253
