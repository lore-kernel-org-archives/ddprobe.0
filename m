Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215611A314E
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753649394; cv=none; b=tJWoEbSCt49JnaoKRcESOW01fYsl2cqUOZt+zsrzB+PFFyELrOpWVQfGYlANMh39TSUR8TH+puNWuT8lnn5VpxbL6AQKKBzZ46ymKHQzCd+mhVRJHaYZZ+pOWWdhr5GppuWJOaLcqE9iglDJi7/qNbi8hXX8lI0vYZDQ6Mfmi44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753649394; c=relaxed/simple;
	bh=eMURxCfNU7vH6AorwMeZEf26oh4EHxzlkpFOpBWt2SA=;
	h=To:Subject:From:Message-Id:Date; b=Fd1Nwz0hDcaXVopsYRAGaMCeoyWX0aC3+5VcfvqCTimdH+qHSQ3c6ZJ24eTMtS8PQ66A/SLIIxZAckUrYq/65vdfePIP8faF/HIHIYEkL9QisR7gbSJbYKyNh3EFrBh6myrEWr9srxhyy+sSS3qv+HHLcumBcPuo8S93i+01L00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/AvEaSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/AvEaSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B8AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753649393;
	bh=eMURxCfNU7vH6AorwMeZEf26oh4EHxzlkpFOpBWt2SA=;
	h=To:Subject:From:Date:From;
	b=e/AvEaSCT6O41svU43Uhv+iEgL07eoktVYYjqC6xoKc83/+ZX4XmQda+zKkzqQ6le
	 LK8QHIOH1OR8vkOc5aqAzn+AgYTYufMhKK0UqRMfLVZtbpBzt1FHDYGaXvxdQAdL3l
	 0qxfRYzzH08rJ97vi4lMJo8vFprLij+7CXOoDSR9E4qEDRtQyxarlKSTIdzy4KYwnt
	 mhY+23l9AFAAkBDlYkNC74J+QB4tH2+9uqNqG5U7GU5wdesrrOR9SqX6MNw9I6m//0
	 w+eHCyXLMaexcczxxchBkc6ao2RGeU31o/OQBr6gBImfUXRNnCfdxpVDN8LXTKXXU/
	 5ZySaCYuWD1AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D7AC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364939357.12409.14536337004179667709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a229e15b148e3366cf87f05876d20da6be1743903efbf952b648bfb995ff6b
Date: Sun, 27 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753649393
