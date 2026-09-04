Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3A94CCDE5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788486634; cv=none; b=GGEtFWLEzQMo82FihwWyRmxxvmWvHluhKsnQSEbst97dKECHx7dVuVE3Gqwb5TL42PZ8H1oyjcI3uvvmw0LbGloaXQaE3ZyZlUwWjlRQuJ7B7xJ1lDuPbvqe3+lLHeDL5WmFGPtoJveM3TrZywQ9pO+s801wEHq+diXPIDqns/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788486634; c=relaxed/simple;
	bh=JmGF7SfhGxLbrqH8ZjagDN+3lFycaThcE9WdAU5q1GY=;
	h=To:Subject:From:Message-Id:Date; b=BH90X8b+eAiAW1mNGMU9dq8lR75LAK+jh5XkFv5sizKTN10Ph4ewYInNg2anO/Yqu3BqmhzXAsZOFZhJyUfiZ9ialVp5Zh9vOAF0274pgo8BkvAZUUzs2YjAse7orGNqjJZGUBuuIvPJcWxYTmYBnfJ6pdJybdJ4eiHIOrcj16w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEShDr0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEShDr0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF55CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788486633;
	bh=JmGF7SfhGxLbrqH8ZjagDN+3lFycaThcE9WdAU5q1GY=;
	h=To:Subject:From:Date:From;
	b=WEShDr0ELwOlKDx+KZUf+/ga9lTNpmayoHouwocuRHpdBJeR5RDHoGgWm/quPQpvW
	 g1P3esSc/Kfn1e4rCs5wdMtkVcRZdXRkdhbS4NOhdgHhbRJXlRi1NmdmqfWqJ+rnyr
	 gFTbDfbmifh10Ycy6lCIeIES+l5GXWVDa/xd3uXFT1tGqaZjsNdiL2ZeBOlMxFJRAM
	 dLthbTy17fnTeFk1s3/TI4nnf3fT07aygmzZVgdNu2Pkii83RCYm0wIyT1W6mA/PQ7
	 ptcO42eBqezSwSXi1vWAsjNQ6pGCUPD7DIW5JdN9KJdBIYjFzSdGJkHBffCClGsTjZ
	 QDLWq9yAKWRjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4F0C61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848663369.29020.13752972147956962449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c9257253c187d275a461d7538ab3bdae9a50b6cd6d08b48309688f9816a043
Date: Fri, 04 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788486633
