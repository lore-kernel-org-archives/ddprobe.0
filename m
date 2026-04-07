Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF93F39A048
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775576734; cv=none; b=d4uzr2kK4jccL6FdNKL6d9n7l183m+gnlzn30ytzlry0At8G+B9JvQ6kQuxY8/bWo9VqONmnSfQ+SgNHHSkIdH4gPdA89uyzlvKamchNIj+zA83dDR9tsZuDAi0TEOoUUFice49bh5Z7TDMoYh2DVZE1yWBJ7EUkjMnaTvjLTnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775576734; c=relaxed/simple;
	bh=Ow0ozY/U16lQmPlkHkNvYEWjfUks6w4WYgtAWaxLfbg=;
	h=To:Subject:From:Message-Id:Date; b=EO9fRyzpjBEX0BA0lBd/0KNiJhuu3qbZml03s5s+ri2c1aO1JPFswgAaxX5qG1B9ui2IGZ3/m632CHtSuKMlBxiKg1Kq+3qyuehiVSbs+9Kv2fcZvGBaFxOwGPBk75jpZIk1hHwOJXYnhkEtwYsNNQiZ/QvwOQf5SnuiRR9NMO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZTs5Cli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZTs5Cli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FB0C19424
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775576733;
	bh=Ow0ozY/U16lQmPlkHkNvYEWjfUks6w4WYgtAWaxLfbg=;
	h=To:Subject:From:Date:From;
	b=eZTs5Clicw4Yof+1gurQ+nkUVcxTfcqosybTT68Z8SWX0BVzDPSnnPLOnEkv+9Y6n
	 zkgROaalRHQdOPUJk0Gub43r9XBUNxob0sUIrpbqBOS41Xa3icd7XmEjpF7TLojCzZ
	 J02Rt3K0uDcXd/0oAFPlYw/wipTN3x7f1AgZ7T5Nhg6e8fUra8nRn+6suOK/0TONMy
	 dzQgxz4oPXrAba403Hbp6lTTiNY3GaGqLa/8hwtR1jOhYYYF+uTJNtUq30wxV8qc0a
	 YqTy7RuKW4YBCtJvtzsAvZyT6c3pNnFvHVyw8sn4xIh2JwLCF1gySpx52/avWj+INj
	 RKZej3Hmm7ApA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA578FF5109
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557673368.1038.4063821428501865866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9b8963bf40ccde76a61a2c4cd05033671bfdb4632b881dc05b01fdc8c860de8
Date: Tue, 07 Apr 2026 15:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775576733
