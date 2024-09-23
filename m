Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE1B184
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727056554; cv=none; b=qkLbfNIqiURPqh8g+EfiyrXck4WAZFGuh3nnOQO8qO8oIPWvcvK2xSI8EQurlHPbIWZqLlPNOPKemBxy9NZkPImGe5mW2dguB6DIKyVhUOL32ba60zOAyW/7MAI6GzSgLfPlXwS8W3Zo0kN8tBxY3GVGOL3vcxSiADJVrv9ZXXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727056554; c=relaxed/simple;
	bh=cGsQJEp0bt7H9qW/2iOw3HwnQcbEou8HUrk8u7uhu9k=;
	h=To:Subject:From:Message-Id:Date; b=uBToVqfAqzRFqgpQX2mDfhv6OJ7MrtIgRmvSZadBIgYg2RBp/lkCk3G0J3YKtL1bV7XIQ3CYxAatXnJCHNA/h+sZOPdTxrXTw5IYuWguAmD+f/ay+Kbjjb2nDw4I+BwMMCmwBfWJMfL5bLZAww2ZX3Pcqke4z5CJu6X3nFIt/6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbxnREvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbxnREvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF586C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727056553;
	bh=cGsQJEp0bt7H9qW/2iOw3HwnQcbEou8HUrk8u7uhu9k=;
	h=To:Subject:From:Date:From;
	b=VbxnREvpExl2xhqo3NjTQ7ArmwMPGOvaBFLnnIYomhP0AqQO6Cv3pctHHti342Bcy
	 wK+o6SXdWeRuM2/LgoI1mXfhP7wjaf09KXWfkPN8qojh46Qt/Q0dQvjimrDKfCuRNZ
	 86EeT7OejQ+uP0IsWUigJm1Cil/LeNB5CiKt/LVL1IhsSCc9wSTjHjoRMHbFgER/OM
	 lbvoR1+tvnHbJ4uTmsZkY1AF8VUBGNojx4lsM4lPmpDFN+51bV3UT0bHgZynUk+/h/
	 F5qDNJUaafYIAqXfaVMbPjosYKSaDq7pvjCwLPS9oPM1rIKd2oLLWkfOx2a8b5KLIR
	 excjHuR32XlYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FB8CF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172705655359.24251.7452275490398589044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88577c2634235cbdfdb4330384b2caf32cbdbab767e23d822d75b6834fc7abb
Date: Mon, 23 Sep 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727056553
