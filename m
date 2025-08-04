Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8BA23313F
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754337594; cv=none; b=HesV1eGTqRjx41I0SSUlyE82mXqlWHW1yD4oydTS/NONViBmKJhVZYe66g5U3JVF46xRj3vSHHvlmTTeqgcPnStDw6zSo1jPtbC/4U7pRv7HCgAVCK52yGdbdYrWjBZFyW4O4P9efA+dVQbrOuvZVFz5JcKjTSgXlMmhR1jI8Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754337594; c=relaxed/simple;
	bh=/HDxs9N2YnflKbOLuCuvHlNxQmFpPO/0dl4vcDWitHA=;
	h=To:Subject:From:Message-Id:Date; b=r7zHFjIsZfg1+tJiCLShpRW5t88Mwf+ni2vxgxZurOm182KJcoVLlENqOeGABkpRbuFXrPaWdvMRn6kp1xkl53H1ob+BjGc6im9B6Gml3mzf5xYNiu559P9uhfEZUMezjS3ztp0orFJqOCw4vpZAdlyVl74azcBlLcF966OEdH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvaDY2e8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvaDY2e8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8AEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754337593;
	bh=/HDxs9N2YnflKbOLuCuvHlNxQmFpPO/0dl4vcDWitHA=;
	h=To:Subject:From:Date:From;
	b=VvaDY2e8a9xKV85o/n/8sJA52UPVMtiKvOWYsgF3zVD9HVMbIdv5VysFuRmjeMX6O
	 aev69nLDNmYvR5QomhfQVLM9Q07A6ZUh4DVEkJi/fMNd7j4r/+UIWthGVNAeYF3lUj
	 2lsbCYI0jVCcCyq1L30MtA5APfqV5jx26M1m/Ln19zgLUZfoaEu+FJN7DJagvAJPM8
	 e+IUO85H5WUciG7FXJhSndDqdyegpVMA91Zmr5vJXnO13cTL9G8gJDHE+ZBZQsxCNL
	 MeVkgxJv39hDyMrEu8rwG9axTpwy0POD8FaF+Dqp0Lm6bz9iBIPlmjsDWESqSpAC+R
	 5go7camVZ/qmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90176C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433759358.10370.13713358592257576698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a8fa9d731df097f60c35dbaef56d22f2f0f89836fcf43490552fd61f0f1e32a
Date: Mon, 04 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754337593
