Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE6E79C2
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 01:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718069903; cv=none; b=bE14D5wyHWuUi19FMxfVpfzYxznvv9ZtyhQGhvQ8RoqeW6GQKuqQMc7Ec6bErr/jsZJLuPXx188aFk5PbT08pc+18aT8Il1N67RTp0i6D66zAjv1r0wDZtVFtelcF8tVW9Up9+nH6An6c+1kheH/hZVGaImxZxCN+UfLL9aG7TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718069903; c=relaxed/simple;
	bh=UWuwZidWRwFR9yZZHJ5EnTq3AlxI738Mr/Lu/JJGm9g=;
	h=To:Subject:From:Message-Id:Date; b=R/yZ8MtLL0XrMvdkt2oaWJOBVHtSst44I/jo4VY3JUX0WfBTAEb4+boc6AKaG0oXz6TWErSx//ILU9U+ehf+g8Vf7U5G/mkY1UgCMmjSzLr+ZK3rc3XjUgF3HEqmcCtDCvq5iSBRjWGdogy648rXEoGuo1Sxw0OtSK9Sbh9CKyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yz/IQLUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yz/IQLUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC6EC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 01:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718069902;
	bh=UWuwZidWRwFR9yZZHJ5EnTq3AlxI738Mr/Lu/JJGm9g=;
	h=To:Subject:From:Date:From;
	b=Yz/IQLUfMbcLZuKa4aYsv3ZRYNHoqHB2nrssHfUNnPd+AFA8u36eM2l3A6ZP7uctl
	 cFSiLjbyFeC4xH3sDYN2Z9wEqnbEuuZOBYvj45v4JzVpVvmzMSh1Ja2RnYExzSD9R7
	 cUBw2BR/LKCobAjl9r667/+imy2Bz7Bz8GDIzoD2f03uA66JvUG8AlYt0yx4vrzT5x
	 qniq30ISQ2jmTvZsaD0Gsh+pLMQ8IRhDlIYvBOEILlAzaVzR2N6Dfln9wFeSeU4OFT
	 cJVMuTKL08IeEukySI6izeEh7dCOYXdOt6oNZNSZKMzA9dQ0HBiEn7NQnNbjAgB0Ue
	 LA1xWV51KPADw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BF7C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 01:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171806990281.14815.13851374158696432785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b217b19483497f27690ce9a91423ece58a7ae36d73102a56ede316c6ead4345
Date: Tue, 11 Jun 2024 01:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718069902
