Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3F31802A3
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718203703; cv=none; b=ZH4k8012F7Ijy5aTzPtrG+OlcU9JolNA59euO02XFWQ8Kme5QxO6hOSvcWoizNTOOqp9u8L4FIPnRWbOoxwJ6IuZSduJLngJV9xVsEYc5avB1ANpFXWJcpS0GMKQ4dSr24XWIqnsg5lDFRse0BWEtb3cX9QdelJ16+LalPxRzPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718203703; c=relaxed/simple;
	bh=XtNE0vix0SPxPk2T5WNzSDzMN2Povb1Xscr7kOlar3A=;
	h=To:Subject:From:Message-Id:Date; b=uH5IUAUSTJ8/xnwXXqjoazyxXSgB0iomikDqnWlEIEwMGeE+OLMtgMeaj461YmZf2o/XZmOqHxQYpMmC6l1i+xomB+MuV/bA15pm4xZYiylcaVFV28m281kQJfxx8m63JUUlSbZLSmOSycHeluZQfXFOY6TpiQYHYt/brq++WC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+i8/k9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+i8/k9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF16C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718203702;
	bh=XtNE0vix0SPxPk2T5WNzSDzMN2Povb1Xscr7kOlar3A=;
	h=To:Subject:From:Date:From;
	b=V+i8/k9SKsIFgw1/YTBl9eS4osMU/0reiuhBOPZNpOxeLw7qRAAiKVHeeN9p2G3hH
	 LJamvnHnDaKCitlvT2eA5iDYG9UIZpKTcPucblqWjX0IfloAkazMz39EkYWhehHs9/
	 QPH5YMv66TPQbNwQHiwFEs+IJlh8t5OMYQzhNB9IrbjItHobr5FrcJyuzc43xSaZGy
	 Gv9mVb7A68kacz/YBFEe9oKYUY6rlpmu5aUBrfo0FoXI+XSUAgfIA1Sai8mIT5U1PD
	 1hch8AYkpCouQxY3/vD2JBj0dSzntyogSMOyazcOmT6fJBRz6PQdL+cs+4ztInOQ/V
	 QVxyHv8JSUIJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C707BC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171820370280.16323.6496533007887177555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 688da6b5b8847777c1a9342076874ee15348c12177a110637df0031405aa1cec
Date: Wed, 12 Jun 2024 14:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718203702
