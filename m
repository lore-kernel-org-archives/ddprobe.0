Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAB31D1F44
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727894154; cv=none; b=Li6egAFKMUPjP6mg++vJD9a34R7HqxtJIgUG9t/R6f780o1hgI0YyTD7qvnCJGVFjBToxxfJIdib5Ot0HizuL1He8h83regNWyLr59HAFXIEPeI525J/wmnAf5uXaycEp5E3qJ9v+WDu6rVh7pyci9lm4OBGPbxP8pA4nExfHk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727894154; c=relaxed/simple;
	bh=iMWDwGh6s04nwSuYmc3J22O0ne6FnJ4XpEdMXyJGYXg=;
	h=To:Subject:From:Message-Id:Date; b=cxdY4mtOu4kppJzxt8lidP3PeYtRiNaQU11Viin9gs0KenTEeSuLwTpxvyVBmNnFlHBVhgfZHTU27EC3MdwlMhQ0Mva3S1Ca8KDf3va6TxHlHWgasn/kgdJyaXi2JtDel4NnqcdoUhEKfmfaKN3UFnwcA6GQsd2/yQ51LIG8smk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrPcGQoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrPcGQoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B70C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727894153;
	bh=iMWDwGh6s04nwSuYmc3J22O0ne6FnJ4XpEdMXyJGYXg=;
	h=To:Subject:From:Date:From;
	b=OrPcGQoJ6rlUxLywW7NZ53+iKJMJSzNP7tWhrT2QI3XHnE5NjkVrPH57C3E/r0u66
	 NkTdRG54TICEhiYFwBdRQppVqY2QXdL0jHZcx3e0yauOYv+ZAwnde2pKhHvtmwFR+/
	 0KRYTMfIm7l1pP+tuxa0YghkZPT3qbwM/LDCfzokJbUJ7splCpQQUSbpqR+oZDLXso
	 JzD/n5g5w/3/HjH+m4U1cqYN6EfFRRn/JBNwRGsJ4zD2H91Lwx0oJZSQZkDeqxVyBc
	 QoJxPiOjflE7khX4S/yDlmJZwyNrRihWsf4oZ/qwPDKMdN2a/Cg0fR4SLHj6u9TRqB
	 hgAzqpDaiusQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3ACCEB2E2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172789415362.14404.17711699009563918199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c4cb3cec1c94b7f9ea607eba5bf47c430ac8ba64eebd60de1cfc2040aa8137
Date: Wed, 02 Oct 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727894153
