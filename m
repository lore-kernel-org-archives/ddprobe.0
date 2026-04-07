Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A1C373BE4
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775529934; cv=none; b=N8tCBRR9MQuyMtMKley/5LCEmFJ5dABDCGXAQYmKnZkQs9SHvPiou29y3+m2+c6opMxQqgv/Gji7PG6lb1cmPGvL6+hcRLvUJFJAPJuN884JLu1Jq7TrBtTR1uJ7YvM/dSLMcAO55hxwLCxHir4Hv+BIf9E4QUdAiN7goFx0jY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775529934; c=relaxed/simple;
	bh=nzyx1R9MQqvj2wWGlXY1o3LQSdiza/L6oDJ+cq1HhPQ=;
	h=To:Subject:From:Message-Id:Date; b=M+ymqUkol7uRzR0SyFrQrB5DTvOep5EXiwWa72eNUzb000vA4L8bbVoV02jU+J0FkETp2BFuActSFY1rVDAFAnHxGk1qglnPro+EMi+AFwpZs+FxBjbCuOpQw7S+7kfUy7Uo2IwGifno6CjOe/H/kWstTDHZ5BpG5+a3Obl5JEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNt9UkxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNt9UkxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7055C2BCB1
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775529933;
	bh=nzyx1R9MQqvj2wWGlXY1o3LQSdiza/L6oDJ+cq1HhPQ=;
	h=To:Subject:From:Date:From;
	b=cNt9UkxDOOlR8QKkf/uDH1LP07ECqL1oJJL/K0sLolUFOvplVzjOdvtkauk1IRily
	 xVGSPh0medeTU9q8wgAkwtA6iXnpRL1okVRxOzOq3e3hDRVjeifyZN5zX8kC3R3kRR
	 5fjEQe8QQVkEB5T7NLQZb5jHgmWLJW4BkRtOesnolpFBU6n37jCiRuIQ9Hh+MGZJeg
	 WPM1kN03KYRwECNN7JuIwH/G7CpB1kTf9o9c3CQY3/vQ5coOeol39vYxr7LP9QbTvq
	 dJvlCd2DRC1s5ppgC4Q4BAQbHTXST1GoXyp5cL3+PhGt4e8Wyy+oZEnxySHXZbL6Gb
	 TlSpKxf+cDHow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CDAFB5183
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 02:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552993370.18508.2045976564983927896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9bcd68d6c51294454ef3cde15ecbb370c82ccfc0b0071e79c657d0842c38308
Date: Tue, 07 Apr 2026 02:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775529933
