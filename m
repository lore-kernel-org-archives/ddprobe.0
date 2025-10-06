Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1734A34BA37
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759780794; cv=none; b=R0tqXS+Md5QqwmdzxbnVbTvrOa5IDbmLW/BZi0xb/4R1No6vsvz+ITHHfLqr8ypL3ubCuOQLyNss7Xl125ULz3arbnl8qdHZv9OcEb3oHDtUiL/aQaa3OnV2xFF0MWDKsi0kUfqIwMzNkZ8pyQgz54XE1EPpH9AWNkVyWBJsTqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759780794; c=relaxed/simple;
	bh=SQUXBj6wTyTxKrip9oOjC5ZMsoijaR7bp/kFLD0070Q=;
	h=To:Subject:From:Message-Id:Date; b=pPKUJxeXea8+rHF3sJatXjRhkX1J4xEOsQiiwKpVDAg3wQHPsBwac3YISpNN4V4jlvv8L1QpoYRGwXbNmIcWfG7e/KGom4gMLrpB8dTx8ydbzbzTaFhMcMyiDG62GgeIswA6XVMHZg2OOT3FUW5DzR+yL44pyZ8fakCw5vLi9AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZT+riDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZT+riDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A539FC4CEFE
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759780793;
	bh=SQUXBj6wTyTxKrip9oOjC5ZMsoijaR7bp/kFLD0070Q=;
	h=To:Subject:From:Date:From;
	b=YZT+riDoi7Q06h/eBSxcuk9UslYEHn0yGnJRWPucIhycE+H8micXq41G5gqu8PoRr
	 cf5zcL8ixLBUuDTgDhbFSQCH6x5HFPTEoBe5MMw/i6f+lgQi9oEZ1PeDQgUn7hwmAi
	 QQeQk0GYKLmfR/vPeNGNDdISYTNkG0a4ItOIRNbUhgb8vAa+1cNIkMQze3fgPXgsQS
	 WN1BT7wNitS6e4c0x3UdhZ5ChqXHFIcjA8IwZoVPmDPpVPC4jPQiampVhSN+aDGp6z
	 cxQRPyef/JfA39mpvFC0wzNeVp8KgPqiFhnbJvCPGJS7D21apPacEVtLn3GhRn6IUc
	 wLvT7avLFo6Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92026CCD184
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978079358.29257.8176842395267904306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549ca873913ad60868adbf863edeae8ddf33cfc426b2f458b1fed410881aa006
Date: Mon, 06 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759780793
