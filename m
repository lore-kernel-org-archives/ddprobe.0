Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B35F3B2FF6
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779961954; cv=none; b=aPOo1buqHVswMXSzerudJdIF4wo2nANdsaFicD09jXHplX9K/WINeSwuu4MvQN2yj/Bmnv3xZZnKNIvgEv+zSxW6lJ9EbKi4v8Yn0vJJ7HclWC86ulgrfKjhe5Ia1TTnKixJATfNjVCgNldp8s6oAuDFJauCCq23h0wGwKFk728=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779961954; c=relaxed/simple;
	bh=s5rdbidkrLBE46PT5aGIFOYoEkwDGBKUn/QxIR7W7oM=;
	h=To:Subject:From:Message-Id:Date; b=fuTvmt+JZFowJbOAwz3JdcS0shz9ufPZBfW3QcuXo4Z8uTUo094lJbAvdvvfvbyRLLxrxh7yAdP/4MbXPOX85vfhTw5scWkuYNtqiCnQ6ay5jhhxr/Js4NLUIcKzPD8a3ABIy+TjpoIWI88BqcxJa3VjTLEBXdn6BkS1/OxhqAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0J/2VM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0J/2VM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE81C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779961953;
	bh=s5rdbidkrLBE46PT5aGIFOYoEkwDGBKUn/QxIR7W7oM=;
	h=To:Subject:From:Date:From;
	b=H0J/2VM4npz/rUsRPeb0lLTzl7Ncee+i6Mlpzsi1zp9SgHNQ+R0pySbsYxb9Dra40
	 mR1oI5JbBlW/OjWgg8Qr25W7zpJI4Lq4tVmkjYJOc4zpkxLXU5HFfeAeS5lbfl/9EM
	 yzGNvODF/J8xJequQApfgHL8D9gmbtREB1daXCv1TjAtibYAo1/xGkKHNTenK5Tb/8
	 sOexFpZWPwTt5MtSYn5R0fg0CvySGChhedfOy1L/5xhPbZvK5z/wv17P4e1u4uXnsI
	 +p/GWhKhidi0ZhndJzCyawSxBbIm4XnogR86d45lYsudQUMFqyJ2Z575UkicewXnLU
	 PRMOiH7to76uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83ADCD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996195368.24821.6765936587516237843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9052902475f2287e4933f42abc420515ac76bfb126d24b27cae2a8fba9c1ac9f
Date: Thu, 28 May 2026 09:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779961953
