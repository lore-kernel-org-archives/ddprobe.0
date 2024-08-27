Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED12F84A2F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724799954; cv=none; b=Ayh/ivVwtvD4gUzAAkve1ebSLHDWXszmLrE3yXVn0hw1yErZVrKvOLKtrLtmJEKTskKhgG7SR0587JV5fcrZ3amVuFR7nFTm1lNf3cn7a0rpxK5mN20HygTwIUPvfVoj7dUez6umXXzmFoVzc8QuwHu2j1Gci7jZPWcOpb5N7SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724799954; c=relaxed/simple;
	bh=coVlce9tUxhYVVupNJxcNb3GwkmEPsQD32b2mIx66s0=;
	h=To:Subject:From:Message-Id:Date; b=rO/iskPjTNHmRboBX57JbjM/uihlDgIXJNDhEvK1lCyywcShWk7L195pOTERD5aiHDLGbwY+LV4X9GmHkP2VX5jXlvjpaNqZ99KTkoEznhJF6Zg2C7+MP5h0PFsjFwxrA6SFIi8XN3c3m1ayeThkwj5gs4B4FDkLKYbswdTqGh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtkIrK1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtkIrK1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A708EC4AF18
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724799953;
	bh=coVlce9tUxhYVVupNJxcNb3GwkmEPsQD32b2mIx66s0=;
	h=To:Subject:From:Date:From;
	b=rtkIrK1OjM1zWXgWo9mJvE82zzOcyfaXlycL4xnmZI1kGvDoVND1JyQjXSIt2xcQ+
	 giuID5g7WnFAEzh3yh5pk/X6ttj9ilAtlhy/ZgXPpPsvhpHQr3MevHvfgnp0RPxgSo
	 h8ITy5tufnQXg5Qz+H2vOiynxl20pl938MUQQrn1yvRyE+zPDXax3FfR8y+aNrJJvO
	 SXQcwt21VarXJkJjyHApdmDKvrsHaTmY9+PlLC9vrgUxRwV5u+4My+4ni+kstRc2uQ
	 JGZISa52cmgwurAqMPX6fdJUgwOS88Vt0KfENamfyRlMVCHa2sr/yGUW2aUxQlkXfA
	 FpObaogyt+7xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9512EC5473F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479995360.1528.16581243794578593397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a787900d7cf53816ba6bb6bdc3c0cf592fe26b6f6f6e824023774227e10a29e6
Date: Tue, 27 Aug 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724799953
