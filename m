Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E50921CC4F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774556094; cv=none; b=qikCj4eZ8o8f+cOpqcMsPDkdOVba2LX+4EDrxDs3ayJGDJO5iD4APNutpyqORZ8Di9quCvoOzksvirBGxRNwqjLR4BIrt0e8Wj391Kg0LgecrJPNezFdxKQq0W1vNRjlLroPf4z8TeqfiDJVUYRzwPwVYka7ox/EO9YwEr3tZrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774556094; c=relaxed/simple;
	bh=616lTSvOIGom+TS5fu5H5tPJqpdEoJTuNxhQwswDovo=;
	h=To:Subject:From:Message-Id:Date; b=JHz27wFXEB7n+5jkNmOE0koJckLdyDMe/LbH7hjWqxyMVhMQII6F17Jo5C6RezJM7zHk/6HoCb2deeRJAu1HCYm0k+BNo9Mf9jwvKdgZFm4tUrLqD0qPHomOEurhALhccjd+p1s+5wmCO2lT5AclA7ae6jtsKN+UZjzLCN50i4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oh4YGrxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oh4YGrxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A491AC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774556093;
	bh=616lTSvOIGom+TS5fu5H5tPJqpdEoJTuNxhQwswDovo=;
	h=To:Subject:From:Date:From;
	b=oh4YGrxKRUASTcDLsptK9wnj6T1es3NZ8ErV6USOQniyDqqlKawqG3fXiV/lTUTNv
	 a6LY6TZCgXtICvdk8kISV5E8usPtbqQsY2s0iWemHyfgdm6clD3wD0o8PVEC/huqeF
	 HOI69kAKQAuVr2EzHqSPPwsG5yBA6aRI6soGVLtM8LgW+WViapfX7Flam43b0eBMvA
	 4XALYlz4M1BRapMzRN9KGL4Sfjv2ZaEHn/ALbfXl5nbB9n7sh3UMIZCIlECoIucvLG
	 jbbVnqYci/s6qksIJjQPsnbB5603VSp5bQ7jbq39jJY4IQzm5aW81TMDxhtJ59z+GH
	 cp8TpdimThUVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AEF10AB81D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455609360.1499.8040035256734994968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5fb6a452a961007450974d456e343a0b28daa22eeae4bb923525f6c3f9e7450
Date: Thu, 26 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774556093
