Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF681A5B8A
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757384394; cv=none; b=ABNnsocHYsprsX7B2qUSje9eY7ZH7ILWaHL6AfSPQHkMO0JTQkqAdlXnQH0WJOUZat5sr5ZxESYWksuxrwHFENsfuq8qb3H0fpUZeE/mKxBCxIXpkZTXG/hLPoR8LoXhKPpOzglP3/tnMBISo4hGP20JELTPp1DtBt6gz1+xsxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757384394; c=relaxed/simple;
	bh=jxWoFp8h8WYOiPKz2I4uEyz7U6TKdZTwjTqxi7BH14U=;
	h=To:Subject:From:Message-Id:Date; b=h8ZHMtfj0aVadxJqTzttDHAiYJatd44Ee7KjOQe3pthyZiPZ8BU3cC/Fgu1s1lNX2ZHuD/brupivSN3cjE+XJ63RhetXzMMtWqWR0f0aE34gv15T/OgjHQ3zX/ip0GPCVHI2RJa0gGB3ZUy1McavxTOYfy73iK43oF6YlqgRsVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfyZsnCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfyZsnCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A3CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757384393;
	bh=jxWoFp8h8WYOiPKz2I4uEyz7U6TKdZTwjTqxi7BH14U=;
	h=To:Subject:From:Date:From;
	b=WfyZsnCukIPlZb1m71lKOOC4IXT/MtD7ukCiRdSciHQQoJEscBmrsLr0T0701WBFR
	 x/eWphCdf35ZninSeuoBcsIz/Gy+CXJkBJedqaISvDRqTXkfeMFxBJKxGuD7zjH5wI
	 8i1UjnLhPo1mdO4+/KSk60sv8sJ7tirxW6+7GT+ozcQgHzLfrqDYYKxCRp3O0VxKV4
	 MRPZMyrEmpsSdh5Sgd53SWr1spPkTAM7k7zs2fAJ/qaoSU+6yYrqft4234tJfVa4L0
	 9ztkRn0wtT5cTFAJ/rIYN9QRNIvxmzNCQT4pjNG7SO3RO5wGf2KHlxucLYJ0ULlHI0
	 lXs1XO9FBLpFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E3CA1016
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738439358.1276.14100158262570654616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 654bf2c727a845f3eec92761ddd4017c52da62a0cf70dff413ad53a3337f64db
Date: Tue, 09 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757384393
