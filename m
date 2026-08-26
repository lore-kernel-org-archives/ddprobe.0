Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368293DA7C0
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787745034; cv=none; b=muuOe0adj+W7jI3R/0wYeIkBfOwE6EdAXWuiAMX1jI8KDkBWU9MgfoOMXwsgzvSSUC3vvj3HHLy9zNbhWw4AUpY7gfTzANKF8Xp8VP6SwClHbkV9z//sYgoLmR3CKzs4hBrZ2O9ytJJ/dfEA14hegtgJ3aTr2BOu+DgXFK/QgWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787745034; c=relaxed/simple;
	bh=bR5C5SYjLuw7efFTvS/fEhki4etzP1aTJzzmHqH80ZM=;
	h=To:Subject:From:Message-Id:Date; b=TfEAJ2cYC+Q3tlDLD2S3SrcV/l/U0dczUNlrJkSoQWL3InjLvBZrjmEXriARFpw7kDBG1ij1IWiGg63ui7cVz0yRKsaHYscGJvIob9+g5iqNs239AH7zdh3S/0+fsI0t9fqKRV5j7uhC5BNmAYFEIURQ4CbY8ABmC7fQko3mgzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaJZV+Xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaJZV+Xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1ACEC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787745033;
	bh=bR5C5SYjLuw7efFTvS/fEhki4etzP1aTJzzmHqH80ZM=;
	h=To:Subject:From:Date:From;
	b=oaJZV+XeGs2M9Aj1VOlnmW1I0jDtMFsZ5B7Gj55IgjoqGZDuMFjrKua6To0FWdhZ6
	 meLl21pqaIgeGQpNRROKK6Y/zx/zuNFbbbcrhGx4wny+DjTYdsqriPxK7DUK/6NdJB
	 sQETMvQi8Uns0ptBo6jYwcazdljO1YDYQ4GmYPFrI5QZEsfD5Hpi1ILw1Sg3Fl7shY
	 YcQgrryZzcZKGtykshUIqxPTHdC9Y6T6dHvpgSd/yYZiqtCmJVCVDD0fEFyGa2KwqL
	 VLzoi258BH0eGr8K7OhdCyBJK7RlbtJCTG3JHqLyOCOeGfNytpgLeDQO6xYMqhqI9n
	 aOGD+F2Sc9KmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA89DC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774503368.3524.2404747581012291842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0b021f4298b8feeae3c6eac9c7e778ee1b9bf5f2f161571b1e6d59ba4d19cc
Date: Wed, 26 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787745033
