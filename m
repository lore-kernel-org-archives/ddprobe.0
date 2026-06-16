Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495D93DFC88
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781638594; cv=none; b=eAVoaKiPl/ScnMjULpioKXHCCu1ln6XKFEVYrxVZyJXqswtrZwe7MW9T9JT0SJytex/CVzrale5pd0Z4sO45G8PP3wfWtosjRFeEfQ6h4LeEQOvHgPvY/PnUfzVMHRqm7RlZxQWeWR+4n86O1/nH0znVykntbatWXoKHPYXngwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781638594; c=relaxed/simple;
	bh=xcYPr0xNGlKIThUCtYGaDqxByoXzEefk3ZGgOEndJpY=;
	h=To:Subject:From:Message-Id:Date; b=dRr4XrRkCEhI/JxJGMmsFiVk0fGVdB3Xx9yV2glUMQfSjTrygMj+KOhvxTu5fwW7J2LYX8P2WOOE5SYlkX7FOGt809rKFigr9xngGtxf929DaeaPBmc/pMcgrkNaXUsM0cz4eDFZoDQEkoq5hu3Hy2yn6+MC6G/CWTpc5dN8Ymc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cv9JLUUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cv9JLUUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FC4C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781638593;
	bh=xcYPr0xNGlKIThUCtYGaDqxByoXzEefk3ZGgOEndJpY=;
	h=To:Subject:From:Date:From;
	b=cv9JLUUQx/YSgx9pA/4jxVoCxy5FiftEp9nFNv1ptjMhES0WVJpLBcCICXTJLq09O
	 fk9JVTyDw4jBPMVir7I8kFKp9n+ZPkJMfaX3UEyjf8GKbTFAbGKYJjVZzv/Z0KlrF/
	 J7R7Gism24phCmvy8HpExNCx+haO4GM1WfOXlFwsHHQPmYNMmD0c6yx+71s6stgbYt
	 87BuikEnOH19FOqXne69byy+bZ70brz+WauYWGMU4hikkp3knwIqVe+FgNznoVvR1G
	 0+aT93YBx3RZCHZT1q0wd0ttmxVkEbOBsG3WJXR7AwvAr+vLu90LlXqWVIsRob3skQ
	 k9TAblpImKmpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F51CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163859372.9707.14039851937200994392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740348ce8d479e53d0c8d32711e8484ff1f9c460cf108759aa364779ed4d7f6a
Date: Tue, 16 Jun 2026 19:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781638593
