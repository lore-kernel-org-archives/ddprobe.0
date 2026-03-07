Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2C138A719
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772901294; cv=none; b=klanh8XIwg018j/tpobjlRN+3OhTgmdPf0foRjAYGpOR9SYY7lAUsvKfTmW1tBW8YMw+APxt9AGiy89sjT1HmevUqRn/7KoLotdBqm+PWW1nn2VMpHLAKcQ1ADb2O9yFF7XsuEm7VkvK7Vja1PATdLHgaN5ofspO6HaBxK+zyro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772901294; c=relaxed/simple;
	bh=eoGTybjH5d5VT6XAouw1x/XLtWQBB2/ePl8JHH+Tdc8=;
	h=To:Subject:From:Message-Id:Date; b=CyQtuEeQrvQRWFJa7QSHhirMwt9MCxD0EUdfXI1VHVsJlt9HCqUsMnkfl63pZF/pchChcVNGzvtLzR2bzOFmZUgvXziU4FCwOfmhM9PMXwJ5kDQbNpuvyE9+gpv8EW4iMxEKIzaPyPHiL+YY4ckCMnHO7Rb5WPn5jGxFQ+LHVOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6HyZzlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6HyZzlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48A1C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772901293;
	bh=eoGTybjH5d5VT6XAouw1x/XLtWQBB2/ePl8JHH+Tdc8=;
	h=To:Subject:From:Date:From;
	b=p6HyZzlBcw0lJHofSUsYwKJqQyyqMIkO/MvANllzwXz6UUEHYAgrXHyqFaCOn9gp0
	 BQH967QpiHJmIVWe3KqLWDdqK9xctcTsF43Uy2XPzBir1OANHseaVVJz8BM/z53kdi
	 VDbkAQRQF/SXsVE/OUAVTdZnqjIgLkHdkiPnxkRbaRepjYVsHenDOMjk1eeLcn8XJE
	 Z4tCVCB+kBVBMbXxrYUZB3LnHlvSZ2/6sC65crXV+1S7aqgqjbbBqbohugg4JI2XST
	 riL/8/MVzX/n7FctKCDwy9XPFgiubD84AOwQSwBOETeWCJsS8uSV5eIeIvOFHXaN53
	 D0oEDLm9nCdyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EDFF55101
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290129358.20780.12189999479194055240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4762482f85d25d1cba74f5503d670c63d2d887208d21d4feee4566e300432348
Date: Sat, 07 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772901293
