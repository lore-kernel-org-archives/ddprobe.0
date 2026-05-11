Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2A92F6931
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778482834; cv=none; b=GDPgZEtdwdGz7PiBORtALpW2IAnLOhSoYesQSC77K1AH80cjF4hS6TrzjbWCw9I21IQdROQjOfF3wTlituOGo6ZthVABe1i8tsbJ3YUzNaXM9BicfanZNT5XgPEZTC7yiS9TVoancupmFbqaWfDEPsrkcmjObAHRZ5g8PRm1SP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778482834; c=relaxed/simple;
	bh=Qt7xgsycF3w72jWY0z3UghceVctrsONPKEu6T4Ql5VM=;
	h=To:Subject:From:Message-Id:Date; b=NzUixlI0xPfW9CbJei/wJBQnkhPDHf4d5p34t+8QsjwaYo777i4LZZQQSlCu+ssUnjIdByQyT1UU6HqQRmRnqaf2Y7sbPeQBuYCs26NJvEmHSmqNOr7AeF6GrGTmjm7vHW+IFGBlp2eWcFXkf/SmkG2EDozn/7SlocOVelfyIWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abKfEwpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abKfEwpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C529CC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778482833;
	bh=Qt7xgsycF3w72jWY0z3UghceVctrsONPKEu6T4Ql5VM=;
	h=To:Subject:From:Date:From;
	b=abKfEwpdN68w8kmvbovdmCAX1IbpCTswH6BiuCE3WHjKsCkOZqoHo0044LfwQrO4W
	 3IiX1EObMMFwXg6EF5lG0Yw8JUN95sr2e/oba6sjDNn/+nyAs/DMtES9cgEHPOWHRy
	 anVqwZZNN/yi7fQU2aC2VEDyLzCqWngdPtbNpJa5GaNl88yDdzjYzNRTyveMtPwqAs
	 vFqEAUqji5qOzWTkNgkD8Shc5VwnmXXaY/YbM28COQaQRRb1yiJVHO6302DTzCiL3G
	 /tgj2EfJGVyszX2Lv8B8vhSxYaX+mzWdWKlefxm518qAvzIM3Pc9QDbtMv8NUpDzN6
	 q+JbkTKEb7h3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF15CD37B5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848283370.6518.7632484974765016893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 268ce1d57d3a08efdb7d91b6e2ccf097f65c4dcb766f9ca757ee63db00df48fe
Date: Mon, 11 May 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778482833
