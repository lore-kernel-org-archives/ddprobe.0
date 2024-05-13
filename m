Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443E8155347
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 16:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715617343; cv=none; b=YhZfNz82/OgCvMVfcNDAJ1Jt2pJaiDsgCeLdeG2TfbLY12m9yX+C7Q2HnHFPllXnKlf/RxCVL3QpMw8OuwT/Qmef2gyVz8zVQaF9lv9RQyCRHz5+xrzR2EwE0ExrhAO1p4dv/zwu2iRC7049FYOqAXBmWZ1OB3LGPkldbVd+9jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715617343; c=relaxed/simple;
	bh=RzHrj7k3IJKI7hmy+BaDkqZ74+dTISRGlxsyZniw/+c=;
	h=To:Subject:From:Message-Id:Date; b=Wf+lr0641Ey5kChXK/mJjsetL8x5q+bb+gRpCOE2Gr+3gLdhWKFgw1OzvPhz7+7xBVTrIUTL2BIticPcnG/PIQvCxLKPPThcpj9U2MoQD6pHW4kvolhEnrTezFPGAQAxVhgB7+TlczIAQ6/ly+WU+ODqwkVjFNgPkXryPpYb3NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXs0Bvo+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXs0Bvo+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93DEC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715617342;
	bh=RzHrj7k3IJKI7hmy+BaDkqZ74+dTISRGlxsyZniw/+c=;
	h=To:Subject:From:Date:From;
	b=XXs0Bvo+cz8UC+3RdrLHODLizElX9W5Ds/v2bKPR1Y8leqaccTDd2sdNTfS1FUmSp
	 DcImiiVj/eiOukjKbkOVG3zsMGGK1WY7wkjkJv+H0zkstipZm/W49unaDo4bqjwW2/
	 5wGcc/+WvYuagvNKTBQYGNXwzvd7Lhmdu/kLMRaPZJx7H4IshO1ToYNCQQilbZ925z
	 ZZ0oLkDZVXzzfFrHKNl7c9J7leYvmUOBkqj4jPw1m20A6UmMeodgCmsOcowrinBY3Q
	 KHqYQVluqZpspF7mqcRakfpztnLdZdBX6Hbm2BM7VRSkrQO2BilB/gQnH2oD3gTldx
	 WWYErzs0phtcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC418C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171561734280.9322.8825715968017203991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50311b01ec6412f81dead8eee7cfb810644556ca013e796a61cd2a7f1b5dc1ea
Date: Mon, 13 May 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715617342
