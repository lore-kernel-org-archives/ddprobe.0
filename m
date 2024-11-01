Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C2019CC2D
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730469354; cv=none; b=qWu3AuEDmYPHUeXFb+HTtpCJVw1UHiOisUTyKDr4Q/fmysxF8u36EqPvITbSsJ9wiJnaDxczn7aYl3v1xNEOR3lZcjOsWsiX1WohHx4vlCbr7jcjM9vZ7ad4LplUPm7ahPTkONIYWLXuvFcaFc+LB+jsClwJJxIjwiPWOOzuFJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730469354; c=relaxed/simple;
	bh=YzDTu71GnjmW0vF+Fkz9JcWZmFBTUyE2yEp00YBz160=;
	h=To:Subject:From:Message-Id:Date; b=KVNLqVvOD7B4pMSBLPPErPgqk5PkLPNBsjodsAZ+bTBzrl2owPT8SGukxBLBr+7JiKK7k7khlf0mIPHWRJFJ6jyliUixuQt8lwzI8ZfsIUzrl9DhuqOVvYIsM0oNB7RADpg0ajQJ9jCTXA5Wpqv8t1dsv71CFyXQWbiob7qULFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiReT/+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiReT/+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7051C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730469353;
	bh=YzDTu71GnjmW0vF+Fkz9JcWZmFBTUyE2yEp00YBz160=;
	h=To:Subject:From:Date:From;
	b=BiReT/+5JNtoStPwQCE5r+dySmbrtyskATIX7xeiFTqNBBtSr0FHtj17Ukc2X3Qqe
	 Gkl2qgiLGkLK7Ir3ZkAm4M5H8Yp2qyEBM7xzeToExupGrUF1GYVLTHi5u9m3/gvn5H
	 R39gAHh04wTA5Nfs2N/+hpaN11HnE587vGFsvPITVecM6AIGk/Veq0kew7N1c8yprW
	 oPUILT++m1DFpN8YyQEEePHJ8e3rN3Ua3odLBadSOLQYgTTo7CAkUnMOj1l7k3pKBX
	 ECmS7VRTZQ2znASkvoeJ2uixPHWJ45T35/12HbBgsabZMRDZsXtdMVR1ox8nDNf8Xx
	 oVhjlTSCVWgNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9913AE6B278
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173046935361.25325.1768892191320516033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acdffcfd2ce2dcb638ccb4c99cfbe46f2337ecc52d8210cce9f69540a47582c8
Date: Fri, 01 Nov 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730469353
