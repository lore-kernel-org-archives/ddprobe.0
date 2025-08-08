Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE551E520B
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754687994; cv=none; b=rqhXfZjMQgaGzQbirfDlP89UvO2kVkV3uWqCPzkB+2hymoPVoas0kknRWhY+f9bu81PDYabzFHm5Mifgyr39F3EsbSMdyLHLeG7HfDuKpESGJ+Fw/r9QknXEY/SgtYeWWjUOiU4KG2Iv0cmHGglgI54N4WUgd/dYkk6qrXME5BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754687994; c=relaxed/simple;
	bh=tZ32odGyP4CWvM5ubOTvzc1c+e2y6oJWDFwH3Fd/znk=;
	h=To:Subject:From:Message-Id:Date; b=lYrz+PYM0Dg8G0EZnf9ntORIc0JbU1QK+7crZrShvNMxGs2n81zm5j91U5YEI/8wB8zdpSUs/BPZyuWKmNhPL4f8jyxlDaJagy4LTfQmgKXQefUOYdCxPxXUegqoXZt/aDpSnz8HhzYRQK+ip3Yc3EQHmD8lxXvkzLw/5oto2J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPQO75Q4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPQO75Q4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77B9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754687993;
	bh=tZ32odGyP4CWvM5ubOTvzc1c+e2y6oJWDFwH3Fd/znk=;
	h=To:Subject:From:Date:From;
	b=VPQO75Q4AXPbpSOL/yISAYsu2bFMMqS73VAdYdKWdUN823TYuSQZ39qai+otvUGCJ
	 KTEybNeh1QWIfxDfyAaAzXgZYQqvWgZZPYWvNt6IGQAkj0f4tzo+D0vvc7ytvC/MqP
	 tnwXsND+3Z030JVYekZzlCKUpkYPsXvxX+O99LoTXPUVTxSK+zRZte70Ch9tRXDMa3
	 sd677+wKotpMSECBJ72RLvblQtdfVQv4ZqRkDJc+OBLfiMaHRRjtt5oojuSWmAEgYF
	 3ok3w3ZZiWUsd9hMqN2CTQ4bIbF+Z+COzq4LxY/NXhTY7oK/eYOrPVjBsweLbzL+N6
	 R9ne6B0xA5HjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92190C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468799357.11565.17877423904430571146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de502cc9ea770369f03d49de1cc210b82568497c848933d8366493764d74ba41
Date: Fri, 08 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754687993
