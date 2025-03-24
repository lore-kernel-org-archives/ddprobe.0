Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C41C1EEA2C
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742798995; cv=none; b=PieQaqdE3vKJcmsD6Ha/dNqgFy9jByYWC2v49KrLpep0Z3D/z9TdNjnIQZXFbxP422EOaHOhsVqRaSNWIMR67bSihDq/HJ/La12dvEC+/uYBL1FHFmlSZ/StoBl5OgL2ojKaIyrenJ4KPmimxAN8T8EIj2mEoOSLcwlF5iqb1vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742798995; c=relaxed/simple;
	bh=9nzm/FTS8GEe7AklfTrAdqMGKg8IQA0iyAKzVs7CQ44=;
	h=To:Subject:From:Message-Id:Date; b=EriBn+DDttdLNDqqiwQwlzTL/Pa9nKrN+LVZrieUI70CBd0TJwlUGF02EJBT296RNe7H6Ipy3JwbXHsKZLqU3uddCf+2XB0/g5cVoxNCe5dwCommMGBcpQWxI8DpMhSY7iMFDw511ly2dH17Xhs4bd75pbtADRM8XyDf6NeUHnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4qHKPEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4qHKPEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E28C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742798993;
	bh=9nzm/FTS8GEe7AklfTrAdqMGKg8IQA0iyAKzVs7CQ44=;
	h=To:Subject:From:Date:From;
	b=f4qHKPEliTv3cnucpJ7fiErMFIcaR7mgMSuSFG2gkPyEbZLuznq8FjRBWMCK408po
	 DygS/oUjhjqsJPYBKM8QCZLqTYbmAEyuXxMuBZD1pi9gyHlWtih9yndnp9MwmCEftC
	 B7ANxPllOKGseKDqzXP+W5mcNe8ctiJcePngQcIi9SAeNsV14YZgGd4gSunX0YbSZW
	 G1nuCF4GsKUeGCAjZrEwo+nmYRaZxmHzdV4wXRPW2pNL7Sso3u2Yn+0jjdo+FZ0nmf
	 v6SrABseiG2zNR5CPJLU8vJ58JhWQ7FanU9OEH/5xJ2SN5nwz+jJmkl0FDD2R2ALTy
	 kZTsiPKrwDjFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996CEC36008
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174279899361.18352.15240193643341276458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c15ceaad94354bd4d4b2f4360569efc8da4cb14c12bc6ecac9b8dabe2258eba4
Date: Mon, 24 Mar 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742798993
