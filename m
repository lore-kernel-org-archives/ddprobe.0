Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEE32FE042
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792128034; cv=none; b=P0JmU5NDNlu5UInVQvCiFESyQMQ6V6fDic4umhw6Yk0gLHPjxW+YkNZ/HV/no3SkzVGN4i8yU9AyzQE2upgb1j8Pxn4HmF41i5CI8CdWrOyGsDZRJPcpe/4EwsaIt6627YQXVi2FBCa14Acw5HoGmY6L+hQ+QVFjM4GLwqgG6n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792128034; c=relaxed/simple;
	bh=C9PwlZowFrDmEME3pgGiyk9yF/2QyOwn0QwMWfEilsg=;
	h=To:Subject:From:Message-Id:Date; b=cKcC+1xArQNbIFTOWA7ocRA3I+dNi3zdu3QnzuAKI3SLiduz6G9uFRltQqmyno7K21JDN1QrXXGHFBcU4wJA2RQIagynfEwrfF/mBN+MOLEs5SipBVMnKJT4LmySo+YSSxSKEY9IDVGWxvrXdtdYbXmlVjjqHdShO4RNShWcjRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKd8Mg5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKd8Mg5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAEDC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792128033;
	bh=C9PwlZowFrDmEME3pgGiyk9yF/2QyOwn0QwMWfEilsg=;
	h=To:Subject:From:Date:From;
	b=bKd8Mg5X5XGtkuSy2av9WfT2qOf9iK/Ban9yd3l/9CjgrWwDz3IUfyjgsoQBl7MrV
	 EWEqB4g39nCtVOE0/KkEMF5nG6yK6yQGxbdPF7L/KQ2C53GbNWkJgueZfKRAbXit/q
	 lYYa+CVdz4v+a0u/jcJyrlGTCBDn3O/sXGng83xpWScdkuBAs30kZehZhSrQik5aac
	 dRozgi8TJUILuxlp2au/ODZtzyI0BKpksFD0GKW2ICgPDu93wH9Eq5t/k1oDR+PIoZ
	 7uA/CdH8IlESIzJVhWPq7pxAWWQlJKlgOwSohUYsxUuSwuymTGdUxSInYN4IQRO7RH
	 +/STt0jdRGEVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4BFCC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212803369.26505.4054200804355152596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a611f5bec25b971dfb615753b14e714a6388d515ccad445996a4db8b69ab9f0
Date: Fri, 16 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792128033
