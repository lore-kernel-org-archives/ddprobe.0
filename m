Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104383793AB
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772831694; cv=none; b=k0NkNyD9XoQguou0M8aT4vDEeeH3a5PzM3yEzDbldznUWhtthkkbefUELawhn48qBAoW6FPzxDl/7YLELM28y7QaaWehYFRu2l9iq6lr93OwKDKvzOUJVOoiS9NA4MP026NR+FIqFMtLBp6KO77ziiL6w+iPVWMGYJfzwHEfITg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772831694; c=relaxed/simple;
	bh=Ci2kvRPWAumdcKTkvkW45I+OGaqBfAbT7wAW2n3Kv78=;
	h=To:Subject:From:Message-Id:Date; b=Und94uiQdECk93q1JcP7nGITrmVqAupb32YX3HFxF6aww5a/DAxCjPmZtbBXHX0gB65sch7Hawj9d8SOtwJZ7prc9fxnX2zZisQ/F4Ezn8hmuMCH6SihrJsO02p42MxVj6b0neb67Ebcyk52eiEz3HZrJiuWa5kTm9+5Pne/a7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSVq4C+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSVq4C+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC12DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772831693;
	bh=Ci2kvRPWAumdcKTkvkW45I+OGaqBfAbT7wAW2n3Kv78=;
	h=To:Subject:From:Date:From;
	b=GSVq4C+hU8kSd7jcnP1Y+hG098yVkDLdGAyLWqUGp/LL3E9dN9W+XiBpw9AQj8zoe
	 uKR/ppQ/gc8i6KfYhXPVaV34p4M1sJg9qSkXxmgBZndIw1SzMCS/ETxkkbE6Y42s8w
	 kroeRGapp6z8/YVM73Veez17KCROVfKgOBQ7eR/ZfpQlS+1H2lGuRF0SKOHbdyt8ac
	 8iQm2uaDuSENvSWR3kWgAGH+UH+MPvx7lcujjnjXi/e9uzKdowvZGyVZgQqKdbczhU
	 SC1OSG9x0YVhZQxF7MY3PeZ2coaqH3ipvU+EXUuNaQhwo44jfTDnBXKJOBN/7yW4rq
	 AopHu3TE7n9Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B36BFCC07B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283169362.9902.15596179685212160194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98b17cddbeedcfe4512d28e954fab0e783f40a2e6d87a9a6beb17ad5d41fef5
Date: Fri, 06 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772831693
