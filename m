Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD50364EB0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771919094; cv=none; b=jQNP+7hJQOVm2+XkA51WJa/7LneLxbTwfQP3wM5Ybi6g2EgLn6JLuHMukj+rfEy4zFC4aZDGOGyPoVHmmE23gXBTDbVgX/FWM7KcsFmwnYVUiJHANRnA/1/bpPPvXB+4zEJvLABH1yHeISIBzBn7gMUw6RjHaz4g/MX23BeaYHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771919094; c=relaxed/simple;
	bh=nRHqdICjzo0vX6s3u1yKejMc3gKojfpJgFj3W/SHs94=;
	h=To:Subject:From:Message-Id:Date; b=sHfBekl4ljX/UZ5QxhBBe8QBAWt29N/+wV3FVVGcY2ne7n1exSoNXbgvnJpJ179FWzIe9P2YoipsyJSOEsqLzmEpXU3FT5QpTVKaJenaIEWIJQ0U9vRCJDzQHaQPpKseZGXTkxXX/MsfgUQAx7lWMv2nYKIZUYGS8LhSEcl8EuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nm+PhVoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nm+PhVoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1276C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771919093;
	bh=nRHqdICjzo0vX6s3u1yKejMc3gKojfpJgFj3W/SHs94=;
	h=To:Subject:From:Date:From;
	b=Nm+PhVoaa8JfxrUPHaDKyrkd0+YAVys5noHR6iaCCMCUrP7bADGjJfCsUVMJNYdcD
	 u89WSQwNGky0cwx+egqi4lQ1Nn8B062BC2Xd1PTVymsTju6TTulB/nQtdJ0ADvQIXu
	 tN+wKsh+GGhlMmls2crEqLXhYI/4XydJ8ECGBq3Fc/WX1vrbwZKPya15MJi3gL7sbl
	 bfjvmNBeRXL1HtbOyi4PoMa+ufxcDK4HQBoCtH/YX7+kGD8As9qgc9qBhvhUihGd13
	 FDUc01xg2ZENUSHHZfsqhy7MokMg+xChIfYhy2Wo+4UmxyLHQEn8tjK0jBO/yBGUPQ
	 sYe+3OEoHOXAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B6EEFB810
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191909360.32206.4300385911633903792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb576e85f9ff6a42a59bda6923755587b6065934a5c11e1c958e6af9b5c74d9b
Date: Tue, 24 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771919093
