Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E743446DF
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762832394; cv=none; b=NKAEFsw7Jqz54GHxSpRWKVM94xMeS87oCAXnSGSjNvnqW0aXlz9O56avH+GVjhy363gGNOzPEJeaiAZQbnIo0CB6HXoFLs9ynoGi59M/qLPNP9mRiqq6Z19TRgshv+c1O8Rrw+ecNWWU8Uepr6WEU2VAu03eWbtzBxsEEzzJ6QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762832394; c=relaxed/simple;
	bh=GUPv4SfXqM84tH8hsN80zs4LeQJWC63mqz4jZ7Cnmgw=;
	h=To:Subject:From:Message-Id:Date; b=nBt9gb98oMx77rKFne9tsHK3HDW81l8vGCjVMxmyfM1MAROD3iGqjKYwKQHhjOvOtKd1w81DyLK/sO67pCYl8TDdWKXj2AUL0s5ycMsrndjRuckGlGzj7JkeDaMkwp/BnTqXsVO6/T31WADE2SSMNTbORCE7qOAmk3Jndijspr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3miOhkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3miOhkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BC3C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762832393;
	bh=GUPv4SfXqM84tH8hsN80zs4LeQJWC63mqz4jZ7Cnmgw=;
	h=To:Subject:From:Date:From;
	b=j3miOhkKUn0emQRkjbYCXhwQcEA2Ik2sBb0PVjCsBmwsk4Z6h4qZBIywNi1G4twcf
	 c6vCIZ1sKtt6QvEc09+mZEoXIa8SRbj5aifqc89J5IK8KWSbR7i25LXtVNuWvfMguV
	 kRULQ1IVhaQTLHoFgQgZPQdilkI//O8gUvWg0NJE+OnAw2kSuXY/cc/+/0zhwwZM1o
	 FkfImr6Gw/znkx90np3/uWeVko+r8oKsWOrPCcCB4/++cMCrBgxNSSBMjzyHOlLuCo
	 Y2MNa7uUbM7/9b/yZg+Fij/Q5Eo+75VFWF3b2ndvNQZXTTYwFii+4Yh2rb3u839bj4
	 1kmT8AdDQ2Pjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FAFCCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283239360.3067.10952426474776464073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7bfb52a3191d9611aea56311c4f4abc1a871a6fa6c1c531b6d31b6cb3054d00
Date: Tue, 11 Nov 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762832393
