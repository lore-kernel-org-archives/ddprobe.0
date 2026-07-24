Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2393749FD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784920234; cv=none; b=P4HhkP57Y7jQGFNzCrrRUQmZxKh/WnUpcIeROv5sSRPAost4mmeRyzzSL4V7RsXq1ejReF15q57KYxKSXa4wpFCuD8wMn/YgZRMcHJaS84uJlN5D/QxRoXX6L6OXM5XQqkOD37QHvwZWyTarQJr7diO52WPSAZA4HylzvOK1sKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784920234; c=relaxed/simple;
	bh=CIUILOEdZBtlR0o+WLT80EaHHuCe+b2oae6W5cSGXBo=;
	h=To:Subject:From:Message-Id:Date; b=o0OSJ5Ty2Lj5u7Ds85yn3LsizdsWD7q1QD7xzU3g+USeVqy0N7c8bRz3J3sEtwI7IVp3KkhqbU96q9IY0UFP5cqYuuzB0vh5LuPrdGSGw2uUc8pcMt7lfVgLS/lTWh1c3WLXm2ok8t4A1wvHby9THqVBqOmJdscALzOC8sr+xVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfCcV54U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfCcV54U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1B6C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784920233;
	bh=CIUILOEdZBtlR0o+WLT80EaHHuCe+b2oae6W5cSGXBo=;
	h=To:Subject:From:Date:From;
	b=cfCcV54Uk2dYNj/+uRYKaKMcONcZwHXGJqlAxnbx2yquDvn3eWVVcRqq7LWhszas4
	 m4wRc1PsCgj0GNRWEyh+9SI3Wzv5C2m98DtcB1uJw8+Wtcfp7ONkoUcu/DyEXGJtlU
	 2wn3otle5Ji6EPxmI6RtBe1tkd5+pxa9hnu/ibZ58ksk3Ia+KysKDeb1nEeD0FiJfZ
	 LnzE/9PC12wnuKzm9UKIjufnPqi4i3MC4Prn2wCp+M+RQgIGQfQIm+sL3h/GGocxtA
	 00fN1ojvpymK1LvXi/AElRn22517GZKP7vrte8ScAcmCOUQIOFB6HW9Il/L1496ZQ4
	 f07XAceRGgOmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A69C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492023368.29899.8185186472570019542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eef61c8e56b4cb51843d8370ff079409cb50d3a9aee5ddbbe49a6659ee754c9
Date: Fri, 24 Jul 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784920233
