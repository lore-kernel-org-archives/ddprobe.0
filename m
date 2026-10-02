Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8655F30C160
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790909434; cv=none; b=tAvmfpgCt8DEtyjXO0hTZJqAr6CthWVVcXwGsPlVImzY2wVADdj9I47zUSZXvLPtAcQGYXb35yYUDtrUkxY3Y9kTVtjKioAHOhJAt3PdTt4YvmL96JiXzYlFtj/5hSyDakKI0VTN9iFT5T26ro7VCdPw9lmAqbQKmaUBU/x/Y+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790909434; c=relaxed/simple;
	bh=T2IGk4Bdvrf4F/oFOHWXDyx7rE4EGov5bfd809ACRaE=;
	h=To:Subject:From:Message-Id:Date; b=sV+XukKuX/PytRA4VZGfkGt98dXlqtjX2jq+bYFCpSCFf94VLc7XAQetHAupUg12u+8QztM7rjfl4Ky14tiQ7JqhkiNdC/wtiVU+zSxvTY/bLzlHvZnWIiC5Y+j5QqrDTIZ+/1tqVPcd9U8cwL6XJ5rXtUBVCav4U83ON3RjF7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEWCCjb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEWCCjb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BD35C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790909434;
	bh=T2IGk4Bdvrf4F/oFOHWXDyx7rE4EGov5bfd809ACRaE=;
	h=To:Subject:From:Date:From;
	b=tEWCCjb0tLzzFOjejHKV6Fd1YOCX1rs559yOyhO19DYQIEhrnJ9CwtLc3/JiugG8A
	 Y2X8ld3HRXeWUn/iydbwaoO0pqXqUn07qq8y+Qg5zXRClmRcYt28dyq94D5NgN6Z+D
	 QLJ7mjUAQp2EIcVKWSrgSg20ZwnfVFpcuPd4cLyEcvLJJIEA489qZGtBd5u2JMUyEz
	 oOMCxZKY8cO5TRZSvY2fiqkNBxkm4kZDSd81gPI2asRdq0SCXhCGIGWVIh3evThW/i
	 EutpgJJPB3qJVzfnE7EoPMpTPt4JPtKXEYf+iGMSdAOzrindec2gN6JU7jAj5JEwu0
	 nsufqgt8tlS4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F13CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090943380.22073.12562331231791279180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ac51e390d757ec9f15425512f40488e37585f9712b2be1b35fa2691cc051e1
Date: Fri, 02 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790909433
