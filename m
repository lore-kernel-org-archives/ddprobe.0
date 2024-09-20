Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B2517555
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726862754; cv=none; b=ThqLutLYDP6s7uHjFsb3App8KqWD2BA+phqa5iZwG9aOZ4qCuxntVwda4QiycM2VccVYyiNadJlkMZrHlA0YHKQE1znd046b/kX2JiRlPWVsN0Umm5aVWBCqR8OHvTLAHJ5kG6hzZJ8dcRY80UeBGaBOHO9F5JeZuuQmS7LtkNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726862754; c=relaxed/simple;
	bh=BOpry24I91oyX4JFTJXENgZBbZYYZCG9cbgC+KE2kZA=;
	h=To:Subject:From:Message-Id:Date; b=mkhOl5mlgOSdtUFVlbVzhaRHgFLtQLMjtdgFJWbTMsK0RaQn+gm+FS+YndAx/+ivJID1WBcF+vYGdvL3rpowWiV2MD3FfraE5Dw4R8PWtN/ip4sFJRufhPwn0i/FsN1IRudW3bIUgysiDX6yvO1jMd//1aVFttYDGE1R4AD/gUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qib3qnuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qib3qnuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4680C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726862753;
	bh=BOpry24I91oyX4JFTJXENgZBbZYYZCG9cbgC+KE2kZA=;
	h=To:Subject:From:Date:From;
	b=Qib3qnuH/ljCzpO59P0XCjfpXRt7DflLZuU61yU9RSQ6OhibHEgPRBCUq25SiRTKD
	 K0IeyrRG1Nw9l/Xc1AmrBoJzL4Fu9bVkzd/kvj4YFJA6Jqz7XyRBt39xVTT9cfi6AO
	 kIoz5GfCBPfh5ktotU8WUJ/WPuufGsAB6RTDOYrintmSsPws1Sm0KgA/uWlhy/4nUF
	 TMOcIAElygHo5WOcHSEm2EJdPlz9MN5URzCFYaFq9shuogE+eSIyGvxGXAgACdBjh1
	 StwVUbQfxdhXtYMYqa8SbuL0co7kd7CUQzqiBF2uv7G80ry3ggKCW1Xqz0Hl4o02dU
	 fICxxFfon8fdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914E1CF9C5F
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172686275358.13347.11349764778085914792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283cd42581da62f977bc313d25fe4cdbab42b41f97cc9e443d8be2a2681ed89c
Date: Fri, 20 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726862753
