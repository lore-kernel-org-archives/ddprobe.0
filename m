Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5719120C46A
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742378395; cv=none; b=IQQJVm8VuaLK5DfZt3YGdtP9wTJ+D2sIdgVliEIDIj+LomooXbLzo6GekWF4WC9V8w/CzJ2seGN+o9/MKqRWfPrRZdJUjDm0cEyQnjDKzSaooPSgDHYltbpu/JPDk//ncwekx8sg2jZvSm9d5HEv+5udQ63dlfVjxhixTFak12g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742378395; c=relaxed/simple;
	bh=aFkWZwIq+WyGJQ4kLk8Wt6bXD1a4kXPPPxPzTKm74iI=;
	h=To:Subject:From:Message-Id:Date; b=LJT3syo6Lx8WZAJ14ME/kuWTMzLeu4fjdTNTRnULD6xlqiRLUPC2VsT2RV2uCtV35CD4r3+YxFi1E7LTkYXLymCjsKxAeOetvn5rvCECKddtx0dkjAkFQ80ivuoDLZCxu8VfcP5O28lUHbLW9CAH2O3U5WPZ6+r2cd5sIW04JGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dqy6yvkj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dqy6yvkj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE500C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742378393;
	bh=aFkWZwIq+WyGJQ4kLk8Wt6bXD1a4kXPPPxPzTKm74iI=;
	h=To:Subject:From:Date:From;
	b=Dqy6yvkjZ5+nu/F6ulOPqfaxY/kuhIvDoao54HU7/80umcGTlTOzh3Q1xhFz0iiCu
	 /dv5o2phPs89XNPyz5ijFGS1+13dJgKoV290l5LDtIOEp52anP0LlDSgD54uMVp96o
	 sK5wuLVlLFw1cvDfaTHbtj0BT+5TDX1DuWxF3Z4PnrxNs720LDXDAc0rtSW7DUf/t9
	 X2S2Gfn7qNT/0RVm1ijwOk/gVK0xATmCc1QpsbpsziZvVT9FSUXAPWY60A0iZV73ux
	 X11WfaJ1tf4LRpaqlSQDmoc8TH7nybl9j9sSIrq68LesMQujIdaerEQQMeixx3Tm3B
	 qHSx19uVmj/tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2198C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174237839365.30455.13721023196451069351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7558d0f8df5f8f02d0728aca7c0ecd25fa1a2302bb3daa4354b89c0db373da
Date: Wed, 19 Mar 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742378393
