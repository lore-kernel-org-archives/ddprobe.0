Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0BA3BC680
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773962094; cv=none; b=fe/ACDuHUkWqPnrn+VEaPTQx9KeAAMSNZekpdvqmak/FlUtsA4s/ysn24qZzCv2kVyxNHloszxH1mHovZNw0vWUYZ9kS8fQJUnaW/5njfutl/Bb1WbnUECEiTVQPiL5gVmwQ+n6P3mbCjESF4mNCd4ijaukosCz9N745fK2YAVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773962094; c=relaxed/simple;
	bh=kydlnG0it4tmpJNuQFQGvfE8JsMefZaNIY4OwVdGDA8=;
	h=To:Subject:From:Message-Id:Date; b=M3/3F34Mx/K0DF/ebb43/VZj20VgwQRfphuAgiQuRisnRMIzd+2MEogN4u2baBKtffz+5UWtVWGsqfNRO/XgyMlgrZlXeWdAQOu4koPL75v/azXDfoaAJ6kGWpv4FhWq4Tk4FzE7qmmR6oAuAdubkK7tW44CfzZ8uiG1wfYbt4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NY9csCrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NY9csCrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E03BC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773962093;
	bh=kydlnG0it4tmpJNuQFQGvfE8JsMefZaNIY4OwVdGDA8=;
	h=To:Subject:From:Date:From;
	b=NY9csCrsM4YwiqlcdCDKFDqfJG9mef/bdQnzJKXESQXKyJ/pzGZwifvKOeUq/f+jl
	 pRlezsFxknGBACA+RUQf8lkJHfr7XzjQIITqj6d6ka/6RkDr3H13MJfCaHmwpj242q
	 ro4xNNOQSKAa9mh8KjDNyMmFMc5SUsy3SxPWHb690ANCyWWMXUle+pXGDRE8HoySB/
	 OikB6ZDiZ5D/mffeJ15VlIqan4iGoW4PczuW9GCmRjCETO6BGH/YP7YRTlYYoz/kFu
	 yWVj3cgDzSnQYqeL0vzKNuGr3k05i43w5MDoOO7s6PR/gTL8hKtngVmukZtRps8Skd
	 T0AO7OYY5ybBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4AA1091931
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396209357.8504.11921800007295707991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a645118f42cb600fdbc8aca68e5707f26b8979268765375fbb50db5ecbace07
Date: Thu, 19 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773962093
