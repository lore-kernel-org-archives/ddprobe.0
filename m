Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD753B38AA
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773350094; cv=none; b=c/wvHzD5cZzRI58Z9ZnIkrmRMtUBzKqM3/RU0BSC7h5lntl1tn9Z0qDXt5g7ovNuiBHK1324ZBZMs1DjEBvDah+erwNuPlsmDrK9ALU20SyukvSB1jP5VRqT9ukgvIB9aWgIuirhz0t0NtGwfiRfWI/gDF27U5F/FIPj5FRvWQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773350094; c=relaxed/simple;
	bh=b06uVdWdixeglJ5WXDWNu1sXc+1DT8CGkyFUwSHXVwU=;
	h=To:Subject:From:Message-Id:Date; b=uNLoG2VR66/iy0kHZjZSC4JExnSySNpOjI2Hjz0rqHJmX2nveHs6CeoIpEldvbd55hgppfN/IEuE0+QkBp8ruXpo98giS+XtB2fFMruk8YNz2iP26DzEdGP02BvHYBfDqKRDpNchxYasOVKNcOxC7lu62nKo2N6ELZ0Zg7kO7A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUEjIpri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUEjIpri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E45BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773350093;
	bh=b06uVdWdixeglJ5WXDWNu1sXc+1DT8CGkyFUwSHXVwU=;
	h=To:Subject:From:Date:From;
	b=EUEjIpriM0Wub1wvd6CZV/4ViG4rZlJz6uHWfs+uxdeqxJ8fcwZ/14K5niuZiJX71
	 TCK7nbIyAbp+UxcqL+/WEjZlOrwpaUX90onVnhS3W7UFkRcPZFihvFaA7msOUchoq8
	 uWWU/EBs78UaFDRPGqdoVYJFNuHX9KmVupkDwZ5rsD4UlobdJ1bZOwK8D2jhUNHnHQ
	 YRCbSdbHWZ7jpWr/8iUKYuZxAnS9Yh5Br1C05C/24rMqdGX56EGJYPb1v20UBSxl2l
	 2wdGP+bjXb9IrEDA/qAbl5MYtqgaBPnBdZjCUnfLZdPPV/IhsRbdY0TrqNMrtoxHd1
	 GW0e9qL6Sw5jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D5106ACEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335009358.32227.1960336924489497145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd16dc07c1b744f5cc97634de180b80011b2cad00bfd7dd56552cd6b56c5d8b
Date: Thu, 12 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773350093
