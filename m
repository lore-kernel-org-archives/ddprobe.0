Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658E814F68
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 08:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713600023; cv=none; b=ksnCxJGYezsc4jFhE37qO2VO4w6traB8yl9fTrELtpYpm9K3l7GBxwVILqKOEoYltAHUWjUXhbd2JDInIMywLJILdeaswscVxZvn+tZiByk2eGok6f9GG0MrB/C+oKkKmXICtJLTE+Y1MH7mt2yW0IDdOa9hhj8c+D9BHmM1U9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713600023; c=relaxed/simple;
	bh=Rn/0lB3baSZHkhVtCn2GXfdBg23+VOGbN9xlshj1Bcc=;
	h=To:Subject:From:Message-Id:Date; b=SU/Xxg7DXqa8iaodEsgxaDKKw2VlwF7Auv9SFwF9853jq6U13AF69vreJKQPJxJ6mOy5CtbyGYeSPjU8o7K8hO+zFelgH28IdfP+Dk6OuWp01Z1kyygrYd4V+VRGaSdwRENmNnE0j7Yq1FiXXe25WxkJb0ndIEdq4z557RfmcDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kerr24Ho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kerr24Ho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00DEC3277B
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 08:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713600022;
	bh=Rn/0lB3baSZHkhVtCn2GXfdBg23+VOGbN9xlshj1Bcc=;
	h=To:Subject:From:Date:From;
	b=Kerr24HoTT8qxhB+tIGCkWieyaeiDHoiEzN9JQeU3syl99sWOSNVaY6351JfvbkCN
	 wd06LLD4Ykf22l01eS1dZaQZNuTYl7lU3m0w1vESmXjVBAaoaXlx/cgTwBRi4Rgcnz
	 /r6Wjoy9M+T3oudzG4u7WHGJLg7PXHMVgO/0diRp7Xm8y6My67e2RW/AYAs3wdzEr9
	 phiyBXi4ZvEOHULNGSDJy2kDEacCfRzD1ffYIqrIWDTPIIkAM6NFpDD06KGYanQx04
	 kUW2hHxQX3XG/A0hG65AEEaIPGWz59qTLt8HW44KGXjwsPqwdwCRdYtEFtM7366mUh
	 k/LegGOF2OIxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C92F8C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 08:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171360002281.32443.17575546734143784106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d691e691356577e3ce1b2260f0d68e2060875e8cdd34e5fa58c04ce652ce2e26
Date: Sat, 20 Apr 2024 08:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713600022
