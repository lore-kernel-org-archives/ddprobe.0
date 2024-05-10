Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF4413B797
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715306543; cv=none; b=LuqB7dFRqxisKRIAj90RyxG6I+QIapHQn1u7rfbKazHtvyd7Q3p5AA9qzP+Yh4nsA/kVPJwhvsriLRmA9x8mv/n2zbamffznnTE0ioIAUkSKxr/8h78M4GaT/BUcGwHqcrcse0hOyxivLAqaOM9NHZOaR+hyg+XMNibj8Upqr4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715306543; c=relaxed/simple;
	bh=aqFbmv3VRwZJcO5+Y4RODj7lOqm2+S3f0GTZiZjcJmc=;
	h=To:Subject:From:Message-Id:Date; b=AeWXM5Tm0F2WbSmf4T2narrrcrod3Q7YQrdBTnON+/Ht3DU8BdfIHHscqUsx7CVZKVol21KAqqbsetAbmEGWPysYKPfhU+xpnxBCLbx6kTvZT1woX13CrGxvsv5VcbDnl10TYxxmmBKeR9//5/WPpfVFjYQ4xyCShyaStmgCrVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V88j6E4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V88j6E4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA96DC116B1
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715306543;
	bh=aqFbmv3VRwZJcO5+Y4RODj7lOqm2+S3f0GTZiZjcJmc=;
	h=To:Subject:From:Date:From;
	b=V88j6E4nAUZrWf7CJAJ7OErSkfaMINo8aoLqU8SDrZIAhrbyOkssy2pirr7MK1mLL
	 NmUIYBymGjsaQ8+iVHnbgm+p/48dOdmxjEFYRYN9ulyNm1RR253dlMAyyn5cx9+EQ+
	 zZ3dWiRWzJGmGCH0/evDPC4+ilrczY/njNAcfzPoCO0U833L3YpLhU09h8R/bgjUNL
	 RdR8JF6LHTlhJJwWvQ1Q+/FqjGYVOOpFcCmQyFuyGxZG/+uKFl7EC+xIg+Pw4Tg2so
	 jDXOcZ6ZNqNgz59H9/IX4nRstmMxp5h4L3VQkSYXZuI1EpBLU5W83TqpXjvIUo+y+4
	 jL6vqu0VdD7xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D05D1C10F1A
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171530654279.13988.10855272878522116407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf45cf3b465af47a6199b7a44bdf2bdd34f4ea1aba52666e52c970679defaa5b
Date: Fri, 10 May 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715306542
