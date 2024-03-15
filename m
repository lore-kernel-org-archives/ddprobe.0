Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C963F18E28
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710498496; cv=none; b=KT59s76no1kj2hag1I3bu3/sZiGxLSGcvYNdy4QobNretIR3HBEDQPNoyE0PDYf+90GlF62HlVQS/Us57Q6P34smH8/W6BJiN8Y0gsVGp/V8H08hRyCrIfUMq6qHBNmdkDHHRjzcKTCC0jcfB9VEhI1AWG9XU9APi4OwLr2XpUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710498496; c=relaxed/simple;
	bh=M2ireJDRVjJUyzpLpaa2YvkfPvqXNhGokgb1QG3kcn8=;
	h=To:Subject:From:Message-Id:Date; b=qGv0A+EAwrGcWTKO1Q44weCwhWbVxShBeBUJHX1y3pwb2E5mw3cAb8wqL4Y7+J5/7xZB7rsmYq0uhIF89ueorJV+vgJ/1cOMW+W8L6+pbZfO7G57GC+m8Tv8qEG0SpAzTwVEsmpgdSLplzpELV2nYnfr+yAiu2T9T5e0zo5ZEZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgiAY657; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgiAY657"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 740D7C433F1
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710498496;
	bh=M2ireJDRVjJUyzpLpaa2YvkfPvqXNhGokgb1QG3kcn8=;
	h=To:Subject:From:Date:From;
	b=PgiAY657Jmen9NSudSTTQmrZ2Sluv6QAH1j6LKbpxFSnbmGMj4b2RZ/SMpQJ6Go1V
	 omJ5rxhQFQtAuVpQTAVQEtjsLIUiRA247i6dIWoph9YhnYbP37wPu4Uhu9nLOTUqnF
	 HrxLsWxKBtzscOD5LqMjk2zcWRQF+ndBOTSzguuIHThV4XItPXrMQB7aqVQrrOiPBL
	 xb/s/k/CE8WPHuCgFqZ7H581dtnWr2rH3UiiB1DiaI9YBret82Zhx4MPsvqfqR5WkP
	 gYRhT3oI0dGMVCTfnntPUkk3abracmonVaFYZ4O+FNna+178ZDt7ywqli4W9hwDovl
	 R6g+XuiLeNk+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F16C54E58
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171049849638.19068.10008635849619951098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935021cd4f149378b125f503b9b8303e64269996d9bf47a903252d050f0c733a
Date: Fri, 15 Mar 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710498496
