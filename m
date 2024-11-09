Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2492F126C02
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731155154; cv=none; b=RVfDMAs2qWd8sPMJY0MY+M78maL0FFtZQP1RzLBQTpOBHTleFYPX8bDYREfSCzh6zJAgZPb9erk1S9CnGb7n5rtDMNwSuPyjJS5cZiSaynzO2mZLIwCQ+FYzIpQZZryEHTWoPvdH2FBmBPDx25S+994XXNPt3zJ7buHkYsoQyus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731155154; c=relaxed/simple;
	bh=X6G9PH5zI/LQHEqGYCP881kq/gu0BssdX3FZhvV3ghU=;
	h=To:Subject:From:Message-Id:Date; b=adrhwIAwnguaHmyoNUwPDHkBE4Jmk8JOWRkhls01OZ5DOHP90kfvpvz41mkD7TaFEgyusPJK1PR6Yeu4OBaFPpSvNTdTDRXmupabVjLjSNNZ1tnpKoizopIXARetq1eFkkkWD0KzK2WO7P8DQNIqmHxMTH6l5ilE6nUFam9KD/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sr9Wro8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sr9Wro8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B9BC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731155153;
	bh=X6G9PH5zI/LQHEqGYCP881kq/gu0BssdX3FZhvV3ghU=;
	h=To:Subject:From:Date:From;
	b=Sr9Wro8Wk8T+xAGb30u0bsV5LDS+9cP2P1VX1bjPP0JnnoRHlNKaB3D4ifYV54GE4
	 nh/1ETAgM/Mbdjfm4/6PWByT5hmqeLM1eYKg53pnC9mhl2gB2c59uxe0RGAGT4/s1Y
	 oday4XXkcYCJKhcYT8+vf1AXyu/AbjyO6bD0nNZuTLoyVb2eOyOjsxR4dML0x6wY9g
	 vY0Y5+DPUTc6uoZfpIyn9wKL+G1myRQ1NqxlZsZzXROHEeEs5MT6lsB7OpzrBafDsz
	 vR8L2AjhC7CwasueT+ZqR50ZoOaWXs30m8yTSw8kk+nzldOTz7jADJUBxjoge15VCW
	 PQTfUOc7Ds4Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E2D5E368
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173115515358.23017.18238352404676724885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55245aed6c58e8aba8dba2f5158385ff71145a9fe2a65ea48795c3d088e8a71
Date: Sat, 09 Nov 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731155153
