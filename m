Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A36182D6
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781754394; cv=none; b=TW09d9EdmGOZJ9qhW/jCjSeUKLTZtmrxYRD5o6DThg+R2Yo95i+9snuKrh/6Gn/jJrY2MCz6L7JrAmb2O7SXzePM0eujiNb0QJ3RgizsCfdC5LLXfNU/MBVm7YK472YjPmUFHRIo3/LVLnQTVtwRYQUbYbPqGXazsy8an5EDJis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781754394; c=relaxed/simple;
	bh=gfURRjADEH92Goh0U2A4k4u1XvvB1rqkXFFXofvJnpA=;
	h=To:Subject:From:Message-Id:Date; b=F/YLld5HuDJTX26qL51GyuGPwKzDH208w+XPJ8MMWPWjl2mLeOz9R5Pv7VVJ1+eAqpa+dsTfVseZo40ZGhlTo60vWysRF+EDjYUEXQArj2IntEHfgDbzrFOwimDnB6IXt3+RdcW/VbdCBxBS/OTTARfnqRUQu7lpcOQK+tLDrqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YucMG587; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YucMG587"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4466C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781754393;
	bh=gfURRjADEH92Goh0U2A4k4u1XvvB1rqkXFFXofvJnpA=;
	h=To:Subject:From:Date:From;
	b=YucMG587eMcRXG0UW/jifi4Fxb0eiMFYu0WwqHqUDOwXS2+YIgaW67nipj1a93KIr
	 P3qNGyNXBOdfCNAuy196zbYSfkmFZFyT+FASS4z6NvOByesifC25NjP8RgiyaQg4U8
	 h2tp3SQUAdXoxf/d1CElWZG7rhXyt5QTRPRyK9IlJyxGy44wPi82UlcliL8L9MMTN/
	 XyZvk2sSbAaNnb2lFPGUhjvXX5ccFtVIgGXdzM7BUC7KjOvIuQ499j/kFU0isShw3n
	 hztg4BXz+7w+zdcsHufHdBBE9OEp0oD1RW3SrkqGIiW15/oTGC1LJUhcYwwI2Lyyyd
	 MVfO/jWBW6ucw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D50CD98DE
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175439374.462.17024842088382763812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8597055695bc750ef397fbf4ec7d36b49a42e132691feeb2fe66ab656e70c5ff
Date: Thu, 18 Jun 2026 03:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781754393
