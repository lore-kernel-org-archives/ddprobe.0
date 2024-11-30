Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2982533F9
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732955754; cv=none; b=eaQPfcWAA609PqdNJNPhS7FNGFU+ghCVAsWvCpZbqH7zZoDmTFpoYc5qS/DRtrP292AMrZWJcO6fXKNecPFrqgFSZpjS8U+5vyKBW+JbCA4tOk2zNvAaiCL8yWTo5RRnDqo0GUL+mnKiHciCrxBGqdnWfuocch1aLQXb7w8m5ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732955754; c=relaxed/simple;
	bh=REZn0UVXt8aPZq6TMI0BvcW+YWmufdFGiKEtgHN28JE=;
	h=To:Subject:From:Message-Id:Date; b=kDlq/HGeATUtUhKqvz+y4jbWvqhNTlNWoaDHjDO3AhBSFY/JQ3PV4eTtTwNOEpRPiZ1Lub2P+z6X3ROYV2iwsU8uK75lXnQmmxamevlU9+qUPZqc+MJOPhpRw0rU4Cu2w0Dq/Dj1EKCB47yN1VLKj5g+7Jcp5LTqxno69dmpnqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M12RH1jR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M12RH1jR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1F0C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732955753;
	bh=REZn0UVXt8aPZq6TMI0BvcW+YWmufdFGiKEtgHN28JE=;
	h=To:Subject:From:Date:From;
	b=M12RH1jRJm8QHxdBSD1ZerPrptE0XJBWcRcaAPp+jrjQoFcs71oIrB10nRzEbeDw6
	 WjNrJJyRIQ9fB2vai4vOmC1ZFLyPSu87Ez7uYoDPdIEyvejlj9Fv6pzEnGnxqdt5rs
	 aMcxWzx7j/INZtfQzhpivsJBGUSqDf9vKCHYtlI4TeF2/xkVRVmW7YwTqXGpTv8Cc1
	 NMoeesMLw/v2VZlv3qjw6JFHpIb5Co8QT+CmHYUW2jyepVi09jXRtpT9PjG1J/OhHo
	 i97pk8xPCUuq+GUjBnhLedukATPPk/FHF1w8PdExN+HhEiB1HTRad/5L7JzXZyQX+1
	 LftFVq6fumsMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982D6D735F8
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173295575359.7168.4194203580482481217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f9d6ac09c31ff62b941e487971d81807045f8b3edb632b5c954ec67ce9ed502
Date: Sat, 30 Nov 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732955753
