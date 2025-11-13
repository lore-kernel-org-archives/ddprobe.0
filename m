Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44207299AA3
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763033994; cv=none; b=PouZXkNxbO4TTYhdzrpzsRJsST4JrIMH0Gzd6ykV672TLHCxKoRUE01YxzJG/gOxTKA3T6h2TV1sbDYFpV+owBY9vCuNWu0rICLqKOe0CtIaD4G5lImZmHCllumsGaa31v78BYhFyKoRs8Xl2IdjP/ZQKXOmpiJ57RUnPNzoyN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763033994; c=relaxed/simple;
	bh=4Z9h7UMMH8BIEYtu4WjKzZwcwEe0/dWTtLDTD6oUmeM=;
	h=To:Subject:From:Message-Id:Date; b=KdWiaI3xMaNjdezTMlUORBvQWmutu81ajtarZTD7VMOaWiu0W9/oVpOdQneOq+KBCCeLhNi7UfSszJn4gJ4xMzXi4R+LfwniVI/3MdzmlXedbh14C0UAQHeV4/d4vfpVdaeNAVX7Z1/8MKAYh34lTBX7rS3GK0S3zU80jMzO0bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inVlCE1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inVlCE1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D52C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763033993;
	bh=4Z9h7UMMH8BIEYtu4WjKzZwcwEe0/dWTtLDTD6oUmeM=;
	h=To:Subject:From:Date:From;
	b=inVlCE1cCJiDHKlh2+g+L1sWoyMTrXzGdwonYS9CP0p9uum4S4IQf/qdA8yyeuOND
	 zVyi9XZkkKfZViD2ZsKM6Gv+XHR9k/7c7oWA4iSc+cEMy1tKcmzGgyjul80h7VtGSG
	 7Ceig6Sk+0zox7tGFa5FUvDMKNVTcDZbmk22C6kwlXkw1LN1gz8rT6MnjtUNMCOi2y
	 bPCnJUYLOw59lOvy8/wBuaOUXpOXltOH17TNt8l+qa6bxqcUtxfUi2x1YFmJJEg4Yx
	 vRoC+X3sxL86qhP/0SqnQSQ22roIINE5pcnlACDbPdAqE2VKMtueWh7Ax44mr1tha8
	 XFKBbwiuzLiEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90023CD5BCF
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303399358.4640.5587374917432019279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af2eb87f984dd0ce67d9c723715f29e8e5e589e5231df352ea5966c353396e9
Date: Thu, 13 Nov 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763033993
