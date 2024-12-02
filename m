Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3471DB34E
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733162154; cv=none; b=ApuOPV3erLpwJX4MUZkWsNQw9IM77JE+EqRdten0V9NOgc5cEtekkYInQMsTgkLI60lWRMxj9s1yJlE7NhDQEfhY+jdl93AlsuoyMj8ljw4R7bumXgKXraeN2/4ZO7SZatq+TSj54oZMlFkFlFWgjmQRR5dlKGq1gWVDn3oucgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733162154; c=relaxed/simple;
	bh=aJiu5Yfppx/fiqJIJmCJRpg97iRuWojz3pX80DZahis=;
	h=To:Subject:From:Message-Id:Date; b=omi4ovjXCpZvMtH45EI0gSo1XePXv59AE1a4keL5HT1jAI7kPzQ1Jj/O+K7w5z1d9ODvBx/un9t4W3fL2Te2wG6fvMcq9akzvzBRXoCnWXxjHa7Wx7t7G1Z6D8az+J9kLfa7eioBvvnDIcAZRv1BsbDJOdVQb+DIJRumP1HE/o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XoZ5glFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XoZ5glFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C7CC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733162153;
	bh=aJiu5Yfppx/fiqJIJmCJRpg97iRuWojz3pX80DZahis=;
	h=To:Subject:From:Date:From;
	b=XoZ5glFsFTMXPdBM/UQgt3YgC9RXg0/Kf/C40mi6pJ21PtqFZxNN3kLbhbsJf3ApG
	 RXc/YcVBj3RG63aJZ2WrS7BuojT5/59CUJTHQrGdSXX3wclFoLiQU563Hf93o8M+FS
	 VcdYpQgnGMN5daX6cqYwcrCsYMPtnUZogp1o5qlsIvJ2VTbTyWm6pYh/8+v39GHp/S
	 9L9SOPUXfVkid2fHorpD7caOOutt/1sJj6XtQL4F5e+meaKukQ6SZrC/kiSgC2jWp3
	 W/XyLpBfPdNySXXRapMyl1mpe0CuCHYRBSDUEoJ/92A+lH9/BelxaL2LvNrUL3TwEk
	 BbP4SpVN7iDww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B375D7833E
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173316215362.28201.6575538208994186736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba428f3b7a14b472a538216c7791d2a4dc88d2ade27c82ac374ed83321d51731
Date: Mon, 02 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733162153
