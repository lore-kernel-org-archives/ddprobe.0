Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7781E24A078
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787016034; cv=none; b=WRi/MPyGvtJ6vK4YUAAMZRnquluclYyGUk3quHNDq7Ix1PbJdagGUEIs+WwPro+ZPE0hMtYQ/Fu9NTVWzb+LlY43W8KuRWrIyky74Y4LJfKRy/2b7yvFHiuDCMzfklN00SNwtJwl1bRdulDXCQ6zo2tDnNVe2me1UbIDdEemrWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787016034; c=relaxed/simple;
	bh=dEHfSlyMp+ZhapXZ232BiB07XichxuuJEXutdhWqkFM=;
	h=To:Subject:From:Message-Id:Date; b=QP3SEqb2WVTg5aN1RIsw4wzRqt5PB3RapUQZZzB0757Aidxxk8W9Uc79lmIaN+JXXjuBF8LkpQYDLxrrIXfcpLpsXZiuMmhU8XhHuKtspbNosyNQ0A7A5mqGyEoYh+LSO9impMgf3gXk9eiKrmkWeoQjz0mi7JE/qTvv9sRZPiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POQOQKDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POQOQKDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25F9C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787016033;
	bh=dEHfSlyMp+ZhapXZ232BiB07XichxuuJEXutdhWqkFM=;
	h=To:Subject:From:Date:From;
	b=POQOQKDp9At5qslsiRJ5uN1hsp6LDnOc8BhIHX9A2mb0f4IcoOb4SQT1HAhyFr75l
	 bDKJuy/RzbpbDSEdAJK6K2x2de6tdrAnk6MNacCa1ckQwZqk895Ef9Yr0d3leWBDDp
	 j5IoIQ1pvL4JcNuBY5asGGnqA+u1Nhlm0vTmgugSAbogoPxHc/lYVj/w3kG5j9gK+Z
	 eYTx4ZsyoFf/zLvvgFVLTYJzSfyhiqulGz/DnZmspCQ3PruRvfZp6dq8UXMVof9IOp
	 AL+kjvKbnL+KsMzbXpCLqXuUBSSkezhDkV0iUHFWzcbH1qbaM7O3mlotDz6I5Fd6BJ
	 y7B2o5SsGjDmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C5DC5B572
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701603373.3423.1784090090722184308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed34a12e4a22f809498134a53b37b29198ed15a85508c499e3a57d9c0a05856
Date: Tue, 18 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787016033
