Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC9C2B9B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721979354; cv=none; b=LFHdHD0t4UwHyctMc+hzsrJlcLwP/GKHFqPt0QhPQTJjZnkXQ/dENjkQTaExalLgEyDPB5uIxOWmoxLNT8QH1DJdzw/q4/ymjzEd6XEIErlHcRIr//YlL1RwjjC9f3Lm2gjbdx9k9vaAQvW/R5R5D89IUqOQwUnXzDfUnrZYbdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721979354; c=relaxed/simple;
	bh=vu6cJqRB7URZYq58iKIfGu9+ov9LBGeywWDnF9i6Dvg=;
	h=To:Subject:From:Message-Id:Date; b=rPQh6kf0x7e1gmIUoN94G8m8Tw//1WvJTFph2Y+TpLrWV3AKhTfqaKm3dWE3ABq8egpDY2Vqhkv74EaveeqMXihG4/4skpc+OJgvGURTJj+NjmzeybJPpFCId+W5h0z/IPdo7DHs2q0wWfKdYmY2sY258gRNNBndsdVmeSdHmvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nmg8pdnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nmg8pdnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA377C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721979353;
	bh=vu6cJqRB7URZYq58iKIfGu9+ov9LBGeywWDnF9i6Dvg=;
	h=To:Subject:From:Date:From;
	b=Nmg8pdnl7hApL7ybIzFn2KBzlOegWWNXlLRP5yLsCjX+nJNmiKUWtY2E9KRhbs5+v
	 aLxhTnKT+A6VfRg0x6PJNf4MdnVELh5BBA2uSDyeZ0eAv3+sSOnN5yHmK8pza2Yc2T
	 cseiKkSaYO9x9tpfm+nYUtJuo/PpHyXRAutS4FRzG3Itmfz/ku3Zhfz5RunjsTGqyW
	 LfZbY6lIFbnvhgt0atR7H3iIIKap7SdvwPwhhEF9668btrpcJ1apwR5UWCLvM39gWl
	 SyQBkKgIvj8SEkfmDDMN0zP/+Zqah1Rzm5OxcpoSMZtCsNzQXMZa1VYIVNlqRiDD9e
	 3Gw0JWnXqZHZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9723EC3DA63
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172197935360.9215.654499326066196518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940f5dfe5e7113b77583ab17ac68102918c912e5b3af68094cee64460cb7ce82
Date: Fri, 26 Jul 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721979353
